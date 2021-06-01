const { default: axios } = require("axios");

var RouteControll = {};

RouteControll.departmentHome = async (req,res)=>{
    const departments = await axios.get('/api/all')
    res.render('departments/index',{departments:departments.data})
}
RouteControll.getDepartment = async (req,res)=>{
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

}
RouteControll.insertForm = async(req,res)=>{
    res.render('departments/new',{dept_name:req.params.dept_name,research:false});

}
RouteControll.insertData = async (req,res,next)=>{
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
    // console.log(data1);
    await axios.post('/api/department',data1);

        res.redirect('/departments/'+Dept_name);
}
RouteControll.getResearch = async(req,res)=>{
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
}
RouteControll.researchForm = async(req,res)=>{
    years = await axios.get('/api/department/years')
    res.render('departments/newResearch',{dept_name:req.params.dept_name,years:years.data});
}
RouteControll.insertResearch = async (req,res)=>{
    var research={
        Dept_name:req.params.dept_name,
        Year:req.body.Year,
        faculty_name:req.body.faculty_name
    };
    await axios.post('/api/research',{research,table:req.body.table});
    res.redirect('/departments/'+req.params.dept_name+'/research');
}
module.exports = RouteControll;