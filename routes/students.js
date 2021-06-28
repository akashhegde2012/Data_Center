const { default: axios } = require('axios');
const RouteControll = require('./controllers/studentControllers');

const   express = require('express'),
        router = express.Router();
        connect = require('../models/db_connect');
        xlsx = require('xlsx');
        
router.get('/',(req,res)=>{res.render('students/index',{pagename:'Student Details'})});
router.post('/',RouteControll.enterStudent);
router.get('/new',RouteControll.newStudent);
router.get('/outgoing',RouteControll.getOutgoing);
router.post('/outgoing',RouteControll.enterStudentOutgoing)
router.post('/exam',RouteControll.enterStudentExam);
router.get('/exam',RouteControll.getExams);
router.get('/enrolled',RouteControll.getEnrolled);
router.post('/enrolled',RouteControll.enterStudentEnrolled)
module.exports = router;