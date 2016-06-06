$(document).on('ready page:load', function () { 
//$(document).ready(function() {
	$('#countries').val('');
	$('#textSubmit').val('5');
	$("#the_form form").on('mousemove', function() {
	  $form = $(this);
	  $input_value = $form.children("#textSubmit").val();
	  $label = $form.children("#textSubmit").siblings("label");
	  $label.text("Current Value = " + $input_value);
	})
	$("#the_form form").on('keyup', function() {
	  $form = $(this);
	  $input_value = $form.children("#textSubmit").val();
	  $label = $form.children("#textSubmit").siblings("label");
	  $label.text("Current Value = " + $input_value);
	})
});