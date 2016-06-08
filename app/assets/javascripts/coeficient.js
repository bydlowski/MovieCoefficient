$(document).on('ready page:load', function () { 
//$(document).ready(function() {
	$('#countries').val('');
	$('#textSubmit').val('5');
	$("#the_form form").on('mousemove', function() {
	  $form = $(this);
	  $input_value = $form.children("#textSubmit").val();
	  $label = $form.children("#textSubmit").siblings("label");
	  $label.text($input_value);
	});
	$("#the_form form").on('keyup', function() {
	  $form = $(this);
	  $input_value = $form.children("#textSubmit").val();
	  $label = $form.children("#textSubmit").siblings("label");
	  $label.text($input_value);
	});
	$(".erase").on('click', function() {
	  $('#countries').val('');
	})
	$(".email-form-signup").hide();
	$("#emailSignup").change(function(){
		$(".email-form-signup").toggle();
	});
	$('.passbutton').mousedown(showPass).mouseup(hidePass);
	function showPass()
	{
	    $(".showpassword").attr('type','text');
	    console.log("hi");
	}

	function hidePass()
	{
	    $(".showpassword").attr('type','password')
	}	
});