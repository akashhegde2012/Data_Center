const   express = require('express'),
        router = express.Router();
        connect = require('../models/db_connect');
        db = connect(),
        axios = require('axios'),
        xlsx = require('xlsx');

router.get('/:dept_name/:table_name', async (req,res)=>{
    const fet = async()=>{
        var department=req.params.dept_name;
        var table = req.params.table_name;
        var column = '*';
        const res = await axios.get('/api/department',{params:{department,table,column}})
        return res.data;
    }
    var details = await fet();
    res.xls('file.xlsx',details);
});
// router.get('/:dept_name/:table_name', async (req,res)=>{
//     const fetchHost=async ()=>{
//         var department= req.params.dept_name;
//         var table = req.params.table_name;
//         var column = '*';
//         const res = await axios.get('/api/department',{params:{department,table,column}})
//         return res.data;
//     }
//     var values = {

//     }
//     var data = await fetchHost();
//     data.forEach((teacher)=>{
//         values[teacher.Year].push(teacher.faculty_name);
//     });
//     res.xls('file.xlsx',values);

// });

module.exports=router;