$(document).ready(function () {

	$.ajax({url: '/'});

	$( "#dialog" ).dialog({
		autoOpen: false,
		modal: true,
		resizable: false,
		width: 'auto',
		beforeClose: function (event, ui) {
				$.ajax({url: '/'});
			}
	});
		
	//Banks Icon	
	$('.ui-state-default').hover(
		function(){ $(this).addClass('ui-state-hover'); }, 
		function(){ $(this).removeClass('ui-state-hover'); }
	);
	
	//Top Menu
	$('#menu1').ptMenu();
	$('.topMenuMain').buttonset();

	$('.pagination a').live('click', function () {
      	$.getScript(this.href);
      	return false;
    });
	
});