const { default: axios } = require('axios');
const RouteControll = require('./controllers/departmentControllers');

const   express = require('express'),
        router = express.Router();
        connect = require('../models/db_connect');
        xlsx = require('xlsx');
router.get('/',RouteControll.departmentHome);
router.get('/:dept_name',RouteControll.getDepartment);
router.get('/:dept_name/new',RouteControll.insertForm);
router.post('/:dept_name',RouteControll.insertData);
router.get('/:dept_name/research',RouteControll.getResearch);
router.get('/:dept_name/research/new',RouteControll.researchForm);
router.post('/:dept_name/research',RouteControll.insertResearch);
module.exports = router;