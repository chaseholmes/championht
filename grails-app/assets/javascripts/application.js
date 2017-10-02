// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better
// to create separate JavaScript files as needed.
//
//= require jquery
//= require bootstrap
//= require bootstrap-datepicker
//= require jquery.multi-select
//= require_self



$('#sidebarCollapse').on('click', function () {
    $('#sidebar').toggleClass('active');
});

$(window).on('resize', function(){
    var win = $(this); //this = window    
    if (win.width() <= 768) { 
        $('#sidebar').removeClass('active');
     }
});

$('.datepicker').datepicker()


$('.multi-select').multiSelect({
    selectableHeader: "<div class='custom-header'>Selectable items</div>",
    selectionHeader: "<div class='custom-header'>Selection items</div>",
});


