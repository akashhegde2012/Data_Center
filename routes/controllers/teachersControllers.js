const { default: axios } = require("axios");

var RouteControll = {}

RouteControll.getPresentTeachers = async (req,res)=>{
    var table = 'teachers_presently_working';
    var column = ' * ';
    var teachers = await axios.get('/api/teachers',{params:{table,column}})
    res.render('teachers/present',{teachers:teachers.data});
}
RouteControll.getLeftTeachers = async (req,res)=>{
    var table = 'teachers_who_left_or_joined_the_institution';
    var column = " * ";
    var teachers = await axios.get('/api/teachers',{params:{table,column}});
    // console.log(teachers)
    res.render('teachers/left',{teachers:teachers.data});
}
module.exports = RouteControll;