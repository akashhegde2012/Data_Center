const RouteControll = require('./controllers/teachersControllers');

const   express = require('express'),
        router = express.Router();
        connect = require('../models/db_connect');
        xlsx = require('xlsx');

router.get('/',(req,res)=>{res.render('teachers/index',{pagename:'Teacher Details'})});
router.get('/present',RouteControll.getPresentTeachers);
router.get('/left',RouteControll.getLeftTeachers);

module.exports = router;