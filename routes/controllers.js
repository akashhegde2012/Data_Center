const { Router } = require("express");

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
    res.render('students/outgoing',{years:years,students:students.data});
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
    res.render('students/exam',{years:years,students:students.data});
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

    res.render('students/enrolled',{years:years,students:students.data});
}
module.exports=RouteControll;
