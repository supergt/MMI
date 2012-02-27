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


	$('.bankIcon.ui-icon-minus').click(
		function() {
			$(this).addClass('ui-icon-plus');
			$(this).removeClass('ui-icon-minus');
			$('.banks').hide();
		}
	);
	
	$('.bankIcon.ui-icon-plus').click(
		function() {
			$(this).addClass('ui-icon-minus');
			$(this).removeClass('ui-icon-plus');
			$('.banks').show();
		}
	);
	
	//Top Menu
	$('#menu1').ptMenu();
	$('.topMenuMain').buttonset();
	
});