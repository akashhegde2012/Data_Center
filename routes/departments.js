const { default: axios } = require('axios');
const RouteControll = require('./controllers/departmentControllers');
const middlewareObj = require('../models/middleware');
const   express = require('express'),
        router = express.Router();
        connect = require('../models/db_connect');
        xlsx = require('xlsx');

// const isLoggedIn = (req,res,next)=>{
//     if(login.login){
//         console.log(login.login)
//         return next();
//     }
//     res.redirect('/login');
// }
router.get('/',middlewareObj.isLoggedIn,RouteControll.departmentHome);
router.get('/:dept_name',middlewareObj.isLoggedIn,RouteControll.getDepartment);
router.get('/:dept_name/new',middlewareObj.isLoggedIn,RouteControll.insertForm);
router.post('/:dept_name',middlewareObj.isLoggedIn,RouteControll.insertData);
router.post('/:dept_name/form',middlewareObj.isLoggedIn,RouteControll.insertByForm);
router.get('/:dept_name/research',middlewareObj.isLoggedIn,RouteControll.getResearch);
router.get('/:dept_name/research/new',middlewareObj.isLoggedIn,RouteControll.researchForm);
router.post('/:dept_name/research',middlewareObj.isLoggedIn,RouteControll.insertResearch);
module.exports = router;