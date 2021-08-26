const { default: axios } = require("axios");

var RouteControll = {}

RouteControll.getPresentTeachers = async (req,res)=>{
    var table = 'teachers_presently_working';
    var column = ' * ';
    var teachers = await axios.get('/api/teachers',{params:{table,column}})
    res.render('teachers/present',{teachers:teachers.data,pagename:'Faculty Presently Working'});
}
RouteControll.getJoinedTeachers = async (req,res)=>{
    var table = 'teachers_who_left_or_joined_the_institution';
    var column = " * ";
    var teachers = await axios.get('/api/teachers',{params:{table,column}});
    // console.log(teachers)
    res.render('teachers/joined',{teachers:teachers.data, pagename:'Faculty who joined the institution'});
}
RouteControll.newJoinedTeachers = async(req,res)=>{
    var table1 = 'teachers_who_left_or_joined_the_institution';
    var table2 = 'teachers_presently_working';
    const info = req.body;
    await axios.post('/api/teachers_joined',{table1:table1,table2:table2,info:info});
    res.redirect('/teachers/joined');
}
RouteControll.getLeftTeachers = async (req,res)=>{
    var table = 'teachers_who_left_the_institution';
    var column = " * ";
    var teachers = await axios.get('/api/teachers',{params:{table,column}});
    table = 'teachers_presently_working';
    column = " * ";
    var teachers2 = await axios.get('/api/teachers',{params:{table,column}});
    // console.log(teachers)
    res.render('teachers/left',{teachers:teachers.data,teachers2:teachers2.data,pagename:'Faculty who left the institution'});
}
RouteControll.newLeftTeachers = async (req,res)=>{
    await axios.post('/api/teachers_left',req.body);
    res.redirect('/teachers/left');
}
module.exports = RouteControll;