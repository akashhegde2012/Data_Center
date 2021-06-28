const { default: axios } = require("axios");

var RouteControll = {};
RouteControll.getOutgoing =async (req,res)=>{
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
    var t_name = 'no_of_outgoing_stud'
    const fetchYear = async()=>{
        var table = t_name;
        var column = ' distinct Year ';
        const res = await axios.get('/api/student/year',{params:{table,column}})
        return res.data;
    }
    var years = await fetchYear();
    var like;
    if(branch.length === 2){
        like = "'_____"+branch+"___'";
    }
    else if(branch.length ===3){
        like = "'_____"+branch+"__'";
    }
    var table = t_name;
    var column = ' * ';
    const students = await axios.get('/api/student',{params:{table,column,year,like}})
    res.render('students/outgoing',{years:years,students:students.data, pagename:'Outgoing Students'});
}
RouteControll.getExams = async(req,res)=>{
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

    var t_name = 'students_appeared_in_university_examination'
    const fetchYear = async()=>{
        var table = t_name;
        var column = ' distinct Year ';
        const res = await axios.get('/api/student/year',{params:{table,column}})
        return res.data;
    }
    var years = await fetchYear();
    var like;
    if(branch.length === 2){
        like = "'_____"+branch+"___'";
    }
    else if(branch.length ===3){
        like = "'_____"+branch+"__'";
    }
    var table = t_name;
    var column = ' * ';
    const students = await axios.get('/api/student',{params:{table,column,year,like}})
    res.render('students/exam',{years:years,students:students.data, pagename:'Students appeared in exam'});
}
RouteControll.getEnrolled = async (req,res)=>{
    var branch;
    var year;
    if(req.query.branch && req.query.Year){
        branch = req.query.branch;
        year = "'"+req.query.Year+"'";
    }
    else{
        branch = 'XX';
        year = 2011;
    }
    var t_name = 'students_enrolled_year_wise'
    const fetchYear = async()=>{
        var table = t_name;
        var column = ' distinct Year ';
        const res = await axios.get('/api/student/year',{params:{table,column}})
        return res.data;
    }
    var years = await fetchYear();
    var like;
    if(branch.length === 2){
        like = "'_____"+branch+"___'";
    }
    else if(branch.length ===3){
        like = "'_____"+branch+"__'";
    }
    var table = t_name;
    var column = ' * ';
    const students = await axios.get('/api/student',{params:{table,column,year,like}});

    res.render('students/enrolled',{years:years,students:students.data, pagename:'Students enrolled year wise'});
}
RouteControll.newStudent=async (req,res)=>{
    res.render('students/new',{pagename:'New Student'})
}
RouteControll.enterStudent = async(req,res)=>{
    const table='students';
    await axios.post('/api/student',{table:table,data:req.body});
    res.redirect('/students/new');
}
RouteControll.enterStudentExam = async(req,res)=>{
    const table='students_appeared_in_university_examination';
    const info = req.body;
    const {Roll_number} = req.body;
    const {data} = await axios.get('/api/student/name',{params:{Roll_number}});
    Object.assign(info,data[0])
    await axios.post('/api/student',{table:table,data:info});

    // await axios.post('/api/student',{table:table,data:req.body});
    res.redirect('/students/exam');
}
RouteControll.enterStudentOutgoing = async (req,res)=>{
    const table = 'no_of_outgoing_stud';
    const {Roll_number} = req.body;
    const info = req.body;
    const {data} = await axios.get('/api/student/name',{params:{Roll_number}});
    Object.assign(info,data[0])
    await axios.post('/api/student',{table:table,data:info});
    // await axios.post('/api/student',{table:table,data:req.body});
    res.redirect('/students/outgoing');
}
RouteControll.enterStudentEnrolled = async (req,res)=>{
    const table = 'students_enrolled_year_wise';
    const info = req.body;
    const {Roll_number} = req.body;
    const {data} = await axios.get('/api/student/name',{params:{Roll_number}});
    Object.assign(info,data[0])
    await axios.post('/api/student',{table:table,data:info});

    // await axios.post('/api/student',{table:table,data:req.body});
    res.redirect('/students/enrolled');
}
module.exports=RouteControll;
