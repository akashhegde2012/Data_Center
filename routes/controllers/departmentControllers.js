const { default: axios } = require("axios");

var RouteControll = {};

RouteControll.departmentHome = async (req,res)=>{
    const departments = await axios.get('/api/all');
    if(req.session.authType === 'admin' || req.session.authType === 'principal')
    res.status(200).render('departments/index',{departments:departments.data,pagename:'Departments'});
    else
    res.redirect('/departments/'+req.session.dept_name);
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
    res.status(200).render('departments/department',{details:details,research:false,dept_name:req.params.dept_name,pagename:req.params.dept_name});

}
RouteControll.insertForm = async(req,res)=>{
    const columns = [
        'Year',
        'Year of Establishment',
        'Names of programmes',
        'Number of teaching posts Sanctioned/Filled',
        'Number of students enrolled',
        'Number of Research Projects:',
        'Total grants received',
        'Inter–institutional collaborative projects and Associated grants',
        'National collaboration',
        'International collaboration',
        'Departmental projects funded by DST-FIST, DBT, ICSSR,etc:',
        'Special research laboratories created by industry or corporate',
        'Number of Papers published',
        'Number of Books with ISBN',
        'Number of Citation Index–range/average',
        'Number of Impact Factor–range/average',
        'Number of h-index',
        'Details of patents and income generated',
        'Areas of consultancy and income generated',
        'Faculty awards',
        'Doctoral/Post doctoral fellows awards',
        'Students awards',
        'How many students have cleared Civil Services and Defense',
        'No of Research Scholars/PG students getting financial assistance',
    ]
    res.render('departments/new',{columns,dept_name:req.params.dept_name,research:false,pagename:'Insert'});

}
RouteControll.insertByForm = async(req,res)=>{
    console.log(req.params.dept_name)
    const dept_name = req.params.dept_name;
    const data = req.body;
    data.Dept_name = dept_name;
    await axios.post('/api/department',data);
    res.redirect('/departments/'+dept_name);


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
    res.render('departments/research',{host:host,other:other,research:true,dept_name:req.params.dept_name,pagename:'Number of Research Associates'});
}
RouteControll.researchForm = async(req,res)=>{
    years = await axios.get('/api/department/years')
    res.render('departments/newResearch',{dept_name:req.params.dept_name,years:years.data,pagename:'Add Research Associate'});
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