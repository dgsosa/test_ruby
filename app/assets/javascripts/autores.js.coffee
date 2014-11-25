# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


jQuery ->
	$('#tabla_autores').dataTable
    sPaginationType: "full_numbers"
    bJQueryUI: true
    bProcessing: true
    bServerSide: true
    sAjaxSource: $('#tabla_autores').data('source')	
    scrollY: 300

    columnDefs : [
    	{ "orderable": true, "targets": 0 },
    	{ "orderable": true, "targets": 1 },
    	{ "orderable": false, "targets": 2 },
    	{ "orderable": false, "targets": 3 },
    	{ "orderable": false, "targets": 4 },
    	{ "orderable": false, "targets": 5 },
    	{ "orderable": false, "targets": 6 },
    	{ "orderable": false, "targets": 7 },
    	{ "orderable": false, "targets": 8 },
    	{ "orderable": false, "targets": 9 },
    	{ "orderable": false, "targets": 10},
    	{ "orderable": false, "targets": 11},
    	{ "orderable": false, "targets": 12}
    ]
