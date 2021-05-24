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
    var select = 'select * ';
    var from = 'from '+table;
    var where = ' where Dept_name = ?';
    var qry = select+from+where;
    db.query(qry,department,(err,rows,fields)=>{
        if(err) console.log(err);
        res.send(rows);
    });
});

module.exports = router;