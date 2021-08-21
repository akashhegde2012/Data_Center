const RouteControll = require('./controllers/institutionControllers');
const middlewareObj = require('../models/middleware');

const   express = require('express'),
        router = express.Router();
        connect = require('../models/db_connect');
        xlsx = require('xlsx');

router.get('/',middlewareObj.isLoggedIn ,(req,res)=>{res.render('institution/index',{pagename:'Institution Details'})})
router.get('/courses',middlewareObj.isLoggedIn ,RouteControll.getCourseOffered);
router.get('/programs',middlewareObj.isLoggedIn ,RouteControll.getPrograms);
router.get('/other',middlewareObj.isLoggedIn ,RouteControll.getOtherDetails);
module.exports=router;