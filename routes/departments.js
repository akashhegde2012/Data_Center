const   express = require('express'),
        router = express.Router();
        connect = require('../models/db_connect');
        db = connect();

router.get('/',async (req,res)=>{
    // auth = req.params.auth;
    // req.session.facultyId = auth;
    var qry = 'SELECT distinct dept_name from Departments';
   await db.query(qry,(err,rows,fields)=>{
        console.log(rows);
        // console.log(fields);
        res.render('departments/index',{departments:rows});
    });
});

router.get('/:dept_name',async (req,res)=>{
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
        res.render('departments/department',{details:rows,name:name[0],research:research});
        }
    });
    
});

module.exports = router;