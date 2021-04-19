
$(document).ready(function() {
    $('#generateExcel').on('click', function(e){
        $("#example-table").table2excel({
            exclude: ".noExport",
            name: "Data",
            filename: "<%=name%>",
        });
    });
});

    