const { default: axios } = require('axios');
const RouteControll = require('./controllers/studentControllers');

const   express = require('express'),
        router = express.Router();
        connect = require('../models/db_connect');
        xlsx = require('xlsx');
        
router.get('/',(req,res)=>{res.render('students/index')});
router.get('/outgoing',RouteControll.getOutgoing);
router.get('/exam',RouteControll.getExams);
router.get('/enrolled',RouteControll.getEnrolled);
module.exports = router;