const   express = require('express'),
        router = express.Router();
        connect = require('../models/db_connect');
        db = connect(),
        axios = require('axios'),
        xlsx = require('xlsx');

router.get('/department',(req,res)=>{
    // console.log(req.query);
    const table = req.query.table;
    const department = req.query.department;
    const column = req.query.column;
    var select = 'select '+column;
    var from = ' from '+table;
    var where = ' where Dept_name = ?';
    var qry = select+from+where;
    db.query(qry,department,(err,rows,fields)=>{
        if(err) console.log(err);
        res.send(rows);
    });
});
router.get('/student/year',(req,res)=>{
    const table = req.query.table;
    const column = req.query.column;
    var select = 'select '+ column;
    var from = ' from '+table;
    var qry = select+from;
    db.query(qry,(err,rows)=>{
        if(err) console.log(err.message);
        else{
            res.send(rows);
        }
    });
})
router.get('/student',(req,res)=>{
    // console.log(req.query);
    const table = req.query.table;
    const year = req.query.year;
    const column = req.query.column;
    const like = req.query.like;
    var select = 'select '+column;
    var from = ' from '+table;
    var where = ' where Year = '+year+ ' and Roll_number like '+like;
    var qry = select+from+where;
    db.query(qry,(err,rows,fields)=>{
        if(err) console.log(err);
        res.send(rows);
    });
});
router.get('/excel',(req,res)=>{
    const table = req.query.table;
    console.log(req.body);
    // res.xls('file.xlsx',table);
})
module.exports = router;