const   express = require('express'),
        bodyParser = require('body-parser'),
        app = express(),
        mysql=require('mysql'),
        methodOverride = require('method-override'),
        port = process.env.PORT || 4000;

        app.use(methodOverride('_method'));
        app.use(bodyParser.urlencoded({extended:true}));
        app.set('view engine','ejs');
        app.use(express.static('public'));
        var db = mysql.createConnection({
            host:'localhost',
            user:'root',
            password:'',
            database:'data_center'
        });
        db.connect((err)=>{
            if(err)
            console.log(err);
            else
            console.log('connected');
        });
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
app.get('/',async (req,res)=>{
    // auth = req.params.auth;
    // req.session.facultyId = auth;
    var qry = 'SELECT distinct dept_name from Departments';

    console.log(auth);
   await db.query(qry,(err,rows,fields)=>{
        console.log(rows);
        // console.log(fields);
        res.render('departments',{departments:rows,auth:auth});
    });
});

app.get('/:dept_name',async (req,res)=>{
    // +"'"+req.params.dept_name+"'";

    var qry = 'select * from from_host_institution where dept_name = ?';
    var research = []
    await db.query(qry,req.params.dept_name,(err,rows,fields)=>{ research = rows});
     qry = 'Select * from Departments where dept_name = ?';
     var name = [];
    await db.query(qry,req.params.dept_name,(err,rows,fields)=>{
        if(err){
        console.log(err);
        res.redirect('/');
        }
        else{
        for (var i  = 0;i < rows.length;i++){
            name[i] = rows[i].Dept_name;
            delete rows[i].Dept_name;
        }
        // console.log(research)
        res.render('details',{details:rows,name:name[0],research:research});
        }
    });
    
});


app.listen(port,function(){
    console.log('app started');
});