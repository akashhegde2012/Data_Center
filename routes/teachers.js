const RouteControll = require('./controllers/teachersControllers');

const   express = require('express'),
        router = express.Router();
        connect = require('../models/db_connect');
        xlsx = require('xlsx');

router.get('/',(req,res)=>{res.render('teachers/index',{pagename:'Teacher Details'})});
router.get('/present',RouteControll.getPresentTeachers);
router.get('/joined',RouteControll.getJoinedTeachers);
router.post('/joined',RouteControll.newJoinedTeachers);
router.get('/left',RouteControll.getLeftTeachers);
router.post('/left',RouteControll.newLeftTeachers);

module.exports = router;