
$(document).ready(function() {
    $('#generateExcel1').on('click', function(e){
        $(".example-table1").table2excel({
            exclude: ".noExport",
            name: "Data",
            filename: "file",
        });
    });
});

$(document).ready(function() {
    $('#generateExcel2').on('click', function(e){
        $(".example-table2").table2excel({
            exclude: ".noExport",
            name: "Data",
            filename: "file",
        });
    });
});