const { default: table2excel, default: table2excel } = require("./table2excel")

document.getElementById(generateExcel).addEventListener('click',()=>{
    var table2excel = new table2excel();
    table2excel.export(document.querySelectorAll('example-table'));
});