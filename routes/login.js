const { default: axios } = require('axios');

const   express = require('express'),
        router = express.Router();
        connect = require('../models/db_connect');
        xlsx = require('xlsx');


router.get('/',async(req,res)=>{
    res.render('login',{pagename:'Login'})
})
router.post('/',async(req,res)=>{
    const email = req.body.emailId;
    var faculty = await axios.get('/api/login',{params:{email}});
    var details = faculty.data;
    if(details.emailId){
        if(details.password === req.body.password){
            req.session.emailId=details.emailId;
            req.session.departmentId=details.departmentId;
            req.session.authType = details.type;
            res.redirect('/');
        }
        else{
            console.log('err')
            res.redirect('/login')
        }
    }
    else{
        console.log('no email');
        res.redirect('/login')
    }
});
router.get('/logout',async(req,res)=>{
    console.log('logout')
    req.session.emailId=null;
    req.session.departmentId=null;
    req.session.authType=null;
    res.redirect('/')
});
module.exports = router;