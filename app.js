const   express = require('express'),
        bodyParser = require('body-parser'),
        app = express(),
        mysql=require('mysql'),
        methodOverride = require('method-override'),
        connect = require('./models/db_connect'),
        db = connect(),
        xlsx        = require('xlsx'),
        fileupload = require('express-fileupload'),
        port = process.env.PORT || 4000;

        app.use(methodOverride('_method'));
        app.use(fileupload());
        app.use(bodyParser.urlencoded({extended:true}));
        app.set('view engine','ejs');
        app.use(express.static('public'));
        app.use(require('express-session')(
            {
                secret:"new sectet",
                resave:false,
                saveUninitialized:false
            }
        ));
// remove auth to use without old data center
var auth;
app.post('/',(req,res)=>{

    auth = req.body.authType;
    req.session.facultyId = auth;
    res.redirect('/');
});
app.get('/',(req,res)=>{
    console.log(auth);
    res.render('index');

});

//requiring other routes
const   departmentsRoutes = require('./routes/departments');

app.use('/departments',departmentsRoutes);


app.listen(port,function(){
    console.log('app started');
});