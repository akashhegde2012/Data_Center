const   express = require('express'),
        router = express.Router();
        connect = require('../models/db_connect');
        db = connect(),
        axios = require('axios'),
        xlsx = require('xlsx');

//all department names for department/index.ejs
router.get('/all',async (req,res)=>{
    var qry = 'SELECT distinct dept_name from Departments';
    await db.query(qry,(err,rows,fields)=>{
        res.status(201).json(rows);
     });
});
router.get('/department/years',(req,res)=>{
    db.query('select distinct Year from Departments',(err,rows)=>{
        res.json(rows);
    });
});
// data for department and research table
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
        res.status(201).json(rows);
    });
});
// insert into department table
router.post('/department',(req,res)=>{
    const sql = 'insert into Departments set ?';
    const data = req.body;
    data.forEach(entry=>{
        db.query(sql,entry,(err,result)=>{
            if(err) console.log(err);
        });
    });
    res.end();
    // res.redirect('/departments/'+data[0].Dept_name);
});
// inserting into research table
router.post('/research',async (req,res)=>{
    const {research,table}=req.body;
    const qry = 'insert into '+table+' set ?';
    await db.query(qry,research,(err,rows)=>{
        res.status(201);
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
            res.status(201).json(rows);
        }
    });
});
// querying student data
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
        res.status(201).json(rows);
    });
});
router.get('/teachers',async (req,res)=>{
    const {table,column} = req.query;
    const select = 'SELECT '+column;
    const from   = ' from '+table;
    const qry = select+from;
    await db.query(qry,(err,rows)=>{
        // console.log(rows);
        res.status(201).json(rows);
    });
});

router.get('/allcourse',async (req,res)=>{
    var qry = 'select distinct Program_name from courses_offered';
    db.query(qry,(err,rows)=>{
        res.json(rows);
    });
});
// institution api
router.get('/course',async (req,res)=>{
    const table=req.query.table;
    const column = req.query.column;
    const program = req.query.pgm;
    const select = 'select ' + column;
    const from = ' from '+table;
    const where = ' where Program_name = ?';
    var qry = select+from+where;
    await db.query(qry,program,(err,rows)=>{
        if(err) console.log(err);
        res.status(201).json(rows);
    });
});
router.get('/other',async (req,res)=>{
    const { table,column } = req.query;
    const select = ' Select '+column;
    const from   = ' from '+table;
    var qry = select + from;
    await db.query(qry,(err,rows)=>{
            res.status(201).json(rows);  
    });
});
module.exports = router;