const   express = require('express'),
        router = express.Router();
        connect = require('../models/db_connect');
        db = connect(),
        dfd = require('danfojs-node'),
        xlsx = require('xlsx');

router.get('/',(req,res)=>{
    res.render('students/index')
});
router.get('/outgoing',async(req,res)=>{
    var branch;
    var year;
    if(req.query.branch && req.query.Year){
        branch = req.query.branch;
        year = req.query.Year;
    }
    else{
        branch = 'XX';
        year = 2011;
    }
    var years = [];
    var t_name = 'no_of_outgoing_stud'
    var qry = 'select distinct Year from '+t_name;
    await db.query(qry,async (err,result,fields)=>{
        for(var i = 0;i < result.length; i++){
            years.push(result[i].Year);
            console.log(result[i].Year);
        }
    });
    var like;
    if(branch.length === 2){
        like = "'_____"+branch+"___'";
    }
    else if(branch.length ===3){
        like = "'_____"+branch+"__'";
    }
    var qry2='select * from '+t_name+' where Year = ? and Roll_number like '+like;
    var students;
    await db.query(qry2,year,(err,result,fields)=>{
        if(err){
            console.log(err);
        }
        else{
            // console.log(result);
            res.render('students/outgoing',{years:years,students:result});
        }
    });
});
router.get('/exam',async(req,res)=>{
    var branch;
    var year;
    if(req.query.branch && req.query.Year){
        branch = req.query.branch;
        year = req.query.Year;
    }
    else{
        branch = 'XX';
        year = 2011;
    }
    var years = [];
    var t_name = 'students_appeared_in_university_examination'
    var qry = 'select distinct Year from '+t_name;
    await db.query(qry,async (err,result,fields)=>{
        for(var i = 0;i < result.length; i++){
            years.push(result[i].Year);
            console.log(result[i].Year);
        }
    });
    var like;
    if(branch.length === 2){
        like = "'_____"+branch+"___'";
    }
    else if(branch.length ===3){
        like = "'_____"+branch+"__'";
    }
    var qry2='select * from '+t_name+' where Year = ? and Roll_number like '+like;
    var students;
    await db.query(qry2,year,(err,result,fields)=>{
        if(err){
            console.log(err);
        }
        else{
            res.render('students/exam',{years:years,students:result});
        }
    });
});

module.exports = router;