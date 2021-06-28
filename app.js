const   express = require('express'),
        bodyParser = require('body-parser'),
        app = express(),
        mysql=require('mysql'),
        methodOverride = require('method-override'),
        connect = require('./models/db_connect'),
        xlsx        = require('xlsx'),
        axios = require('axios'),
        fileupload = require('express-fileupload'),
        cors = require('cors'),
        json2xls = require('json2xls'),
        fetch=require('node-fetch');
        port = process.env.PORT || 4000;
        app.use(cors());
        app.use(methodOverride('_method'));
        app.use(fileupload());
        app.use(bodyParser.urlencoded({extended:true}));
        app.set('view engine','ejs');
        app.use(json2xls.middleware);
        app.use(express.static('public'));
        app.use(bodyParser.json());
        app.use(require('express-session')(
            {
                secret:"new sectet",
                resave:false,
                saveUninitialized:false
            }
        ));
//setting base url for api 
axios.defaults.baseURL = 'http://localhost:4000';
// remove auth to use without old data center
// var auth = 'admin';
// app.post('/',(req,res)=>{
    
//     if(req.body.authType)
//     auth = req.body.authType;
//     res.redirect('/');
// });

app.use((req,res,next)=>{

    var auth = req.session.authType
    res.locals.currentUser =auth;
    next();
});

app.get('/',(req,res)=>{

        res.render('index',{pagename:''});

});

const { middleware } = require('json2xls');
//requiring other routes
const   departmentsRoutes           = require('./routes/departments'),
        departmentApiRoutes         = require('./api/departmentApi'),
        excelApiRoutes              =require('./api/excelApi'),
        studentRoutes               = require('./routes/students'),
        teacherRoutes               =require('./routes/teachers'),
        loginRoutes                 =require('./routes/login'),
        institutionRoutes           =require('./routes/institution');
        

app.use('/departments',departmentsRoutes);
app.use('/students',studentRoutes);
app.use('/api',departmentApiRoutes);
app.use('/excel',excelApiRoutes);
app.use('/teachers',teacherRoutes);
app.use('/institution',institutionRoutes);
app.use('/login',loginRoutes);
// app.get('/query',async (req,res)=>{
//     const fetchs=async ()=>{
//         const res = await fetch('http://localhost:4000/fetch');
//         const data = await res.json();
//         return data;
//     }
//     var x = await fetchs();
//     console.log(x);
// })

app.listen(port,function(){
    console.log('app started');
});
