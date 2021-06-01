const { default: axios } = require("axios");
const { default: fetch } = require("node-fetch");
const call =(v)=>{
    console.log(v);
}
var RouteControll = {};
RouteControll.getCourseOffered = async (req,res)=>{
    const programs = await axios.get('/api/allcourse');
    var program='';
    if(req.query.program){
        program=req.query.program;
    }
    const fetchCourses = async ()=>{
        const table = 'courses_offered';
        const column = ' * ';
        const pgm = program;
        var res =await axios('/api/course',{params:{table,column,pgm}});
        return res.data;
    }
    var courses = await fetchCourses();
    res.render('institution/coursesOffered',{programs:programs.data,courses})
}
RouteControll.getOtherDetails = async(req,res)=>{
    const fetchOtherDetails = async (table_name)=>{
        const table=table_name;
        const column = ' * ';
        var res = await axios('/api/other',{params:{table,column}});
        return res.data;
    }
    const applications =await fetchOtherDetails('eligible_applications_received_for_admissions');
    const sanctioned   =await fetchOtherDetails('number_of_sanctioned_posts');
    const reserved     =await fetchOtherDetails('seats_earmarked_for_reserved_category');
    res.render('institution/otherDetails',{applications,sanctioned,reserved,call:call});
}
RouteControll.getPrograms = async (req,res)=>{
    const fetchOtherDetails = async (table_name)=>{
        const table=table_name;
        const column = ' * ';
        var res = await axios('/api/other',{params:{table,column}});
        return res.data;
    }
    const programs = await fetchOtherDetails('programs_offered_year_wise');
    res.render('institution/programsOffered',{programs})
}
module.exports = RouteControll;