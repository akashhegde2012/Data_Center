const   express = require('express'),
        bodyParser = require('body-parser'),
        app = express(),
        mysql=require('mysql'),
        methodOverride = require('method-override'),
        connect = require('./models/db_connect'),
        db = connect(),
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
var auth = 'admin';
app.post('/',(req,res)=>{
    
    if(req.body.authType)
    auth = req.body.authType;
    res.redirect('/');
});

app.use((req,res,next)=>{

    req.session.facultyId = auth;
    res.locals.currentUser =auth;
    next();
});

app.get('/',(req,res)=>{
    res.render('index');

});

const { middleware } = require('json2xls');
//requiring other routes
const   departmentsRoutes = require('./routes/departments'),
        apiRoutes         = require('./api/departmentApi'),
        studentRoutes     = require('./routes/students');

app.use('/departments',departmentsRoutes);
app.use('/students',studentRoutes);
app.use('/api',apiRoutes);
// app.get('/fetch',(req,res)=>{
//     console.log(req.query);
//     ob = {
//         Dept_name: 'Bio Technology'
//         // Year : '2016-17'
//     }
//     db.query('select * from Departments where Dept_name = ?',req.query.department,(err,rows,fields)=>{
//         if(err) console.log(err);
//         // console.log(rows);
//         res.send(rows);
//     })
// })
// app.get('/query',async (req,res)=>{
//     const fetchs=async ()=>{
//         const res = await fetch('http://localhost:4000/fetch');
//         const data = await res.json();
//         return data;
//     }
//     var x = await fetchs();
//     console.log(x);
// })
// app.get('/getdata',async (req,res)=>{
//     const fet = async()=>{
//         var department='Computer Science And Engineering';
//         var table = 'Departments'
//     	const res = await axios.get('http://localhost:4000/api/fetch',{params:{department:department,table:table}})
//     	return res.data;
//     	}
//     var a = await fet();
// 	console.log(a);
// })
app.listen(port,function(){
    console.log('app started');
});
