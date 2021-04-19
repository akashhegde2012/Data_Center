const mysql = require('mysql');

const connectDB = ()=>{
    var db = mysql.createConnection({
        host:'localhost',
        user:'root',
        password:'',
        database:'data_center'
    });
    db.connect((err)=>{
        if(err)
        console.log(err);
        else
        console.log('connected');
    });
    return db;
}
module.exports = connectDB;