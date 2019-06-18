
function getDepartments() {

    $.ajax({
        type: 'GET',
        url: 'http://localhost:8080/TestDepartment/Department',
        contentType: 'text/html'
    })
        .done(function(data) {
            $('#data').html(data);
        })
        .fail(function(err) {
        	console.log("Log: Failed to retrieve department data");
            $('#data').html("<span style='color: red'>Failed to retrieve department data</span>");
        });
}

$(document).ready(function() {
    console.log("jQuery is ready!");
    
    getDepartments();
});