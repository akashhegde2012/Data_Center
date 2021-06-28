const RouteControll = require('./controllers/institutionControllers');

const   express = require('express'),
        router = express.Router();
        connect = require('../models/db_connect');
        xlsx = require('xlsx');

router.get('/',(req,res)=>{res.render('institution/index',{pagename:'Institution Details'})})
router.get('/courses',RouteControll.getCourseOffered);
router.get('/programs',RouteControll.getPrograms);
router.get('/other',RouteControll.getOtherDetails);
module.exports=router;