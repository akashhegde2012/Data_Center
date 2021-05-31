const RouteControll = require('./controllers');

const   express = require('express'),
        router = express.Router();
        connect = require('../models/db_connect');
        db = connect(),
        xlsx = require('xlsx');
router.get('/',async (req,res)=>{
    // auth = req.params.auth;
    // req.session.facultyId = auth;
    var qry = 'SELECT distinct dept_name from Departments';
   await db.query(qry,(err,rows,fields)=>{
        // console.log(rows);
        // console.log(fields);
        res.render('departments/index',{departments:rows});
    });
});

router.get('/:dept_name',async (req,res)=>{
    // +"'"+req.params.dept_name+"'";

    //  var qry = 'Select * from Departments where dept_name = ?';
    //  var name = [];
    // await db.query(qry,req.params.dept_name,(err,rows,fields)=>{
    //     if(err){
    //     console.log(err);
    //     res.redirect('/');
    //     }
    //     else{
    //     for (var i  = 0;i < rows.length;i++){
    //         name[i] = rows[i].Dept_name;
    //         delete rows[i].Dept_name;
    //     }
    //     }
    // });
    const fet = async()=>{
            var department=req.params.dept_name;
            var table = 'Departments';
            var column = '*';
            const res = await axios.get('/api/department',{params:{department,table,column}})
            return res.data;
    	}
    var details = await fet();
	for (detail of details){
        delete detail.Dept_name;
    }
    // res.xls('file.xlsx',details);
    res.render('departments/department',{details:details,research:false,dept_name:req.params.dept_name});

});

router.get('/:dept_name/new',async(req,res)=>{
        res.render('departments/new',{dept_name:req.params.dept_name,research:false});

});
router.post('/:dept_name',async (req,res,next)=>{
    var file = req.files.excel,
    filename = file.name;
    console.log(filename);
    await file.mv('./upload/'+filename,(err)={});
    var wb1 = xlsx.readFile('./upload/'+filename);
    var ws1 = wb1.Sheets.Sheet1;
    var data1 = xlsx.utils.sheet_to_json(ws1);
    Dept_name = req.params.dept_name;
    data1.forEach( data => {
        data.Dept_name = Dept_name;
    });
    console.log(data1);
    var sql=`insert into Departments set ?`;    
        data1.forEach(obj=>{
            let query=db.query(sql,obj,(err,result)=>{
                if(err)
                console.log(err);
            });
        });
        res.redirect('/departments/'+Dept_name);
});
router.get('/:dept_name/research',async(req,res)=>{
    // var qry = 'select * from from_host_institution where dept_name=?';
    // var host = [];
    // db.query(qry,req.params.dept_name,(err,rows,fields)=>{ host = rows;

    //     var other = [];
    //     var qry1 = 'select * from from_other_institution where dept_name=?';
    //     db.query(qry1,req.params.dept_name,(err,rows1,fields)=>{
    //         other = rows1;
    //         res.render('departments/research',{host:host,other:other,research:true,dept_name:req.params.dept_name});

    //     });

    // });
    const fet = async(tableName)=>{
        var department=req.params.dept_name;
        var table = tableName;
        var column = '*';
        const res = await axios.get('/api/department',{params:{department,table,column}})
        return res.data;
    }
    var host = await fet('from_host_institution');
    var other = await fet('from_other_institution');
    res.render('departments/research',{host:host,other:other,research:true,dept_name:req.params.dept_name});
});
module.exports = router;