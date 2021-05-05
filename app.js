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

// router.get('/:dept_name',async (req,res)=>{
//     // +"'"+req.params.dept_name+"'";

//      var qry = 'Select * from Departments where dept_name = ?';
//      var name = [];
//     await db.query(qry,req.params.dept_name,(err,rows,fields)=>{
//         if(err){
//         console.log(err);
//         res.redirect('/');
//         }
//         else{
//         for (var i  = 0;i < rows.length;i++){
//             name[i] = rows[i].Dept_name;
//             delete rows[i].Dept_name;
//         }
//         var details = rows;
//         // console.log(research)
//         qry = 'select * from from_host_institution where dept_name=?';
//         var host = [];
//         db.query(qry,req.params.dept_name,(err,rows1,fields)=>{ host = rows1;

//         var other = [];
//         var qry1 = 'select * from from_other_institution where dept_name=?';
//         db.query(qry1,req.params.dept_name,(err,rows2,fields)=>{
//             other = rows2;
//             details['host'] = host;
//             details['other']=other;
//             console.log(details);
//             res.render('departments/department',{details:details,name:name[0],dept_name:req.params.dept_name,host:host,other:other});


//         });

//     });
//         }
//     });
    
// });
