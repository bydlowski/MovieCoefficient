$(document).on('ready page:load', function () { 
//$(document).ready(function() {
	$('#countries').val('');
	$('#textSubmit').val('5');
    $('#form_imdb_rating').val('');
    // Update the label with the value of the slider
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
    // Erase the value of the search when submit is hit
	$(".erase").on('click', function() {
	  $('#countries').val('');
      $('.suggestion-info').text('');
      $('#form_imdb_rating').val(''); 
      $('#form_rotten_rating').val('');
      $('#form_tmdb_rating').val('');
      $('#form_metacritic_rating').val('');
	});
    // Erase form values when submit is clicked
    $("#resultSubmit").on('click', function() {
      setTimeout( function(){ 
        console.log("Hey");
        $('#form_imdb_rating').val(''); 
        $('#form_rotten_rating').val('');
        $('#form_tmdb_rating').val('');
        $('#form_metacritic_rating').val('');
      }  , 1000 );
    });
    // Hide e-mail form
	$(".email-form-signup").hide();
	$("#emailSignup").change(function(){
		$(".email-form-signup").toggle();
	});
    // Show password when the button is pressed and hide it when it's released
	$('.passbutton').mousedown(showPass).mouseup(hidePass);
	function showPass()	{$(".showpassword").attr('type','text');};
	function hidePass() {$(".showpassword").attr('type','password')};
});

function ratingResult(ratA, ratB, ratC, ratD, coefA, coefB, coefC, coefD) {

    if ( coefA == 0 && coefB == 0 && coefC == 0 && coefD == 0) {
        return 'N/A'
    }

	// Transform coefficients in percentages of the rating
    if (isNaN(coefA) && isNaN(coefB)) {
        var finalA = 0.25;
        var finalB = 0.25;
        var finalC = 0.25;
        var finalD = 0.25;
    } else {
    	var coefTotal = parseFloat(coefA) + parseFloat(coefB) + parseFloat(coefC) + parseFloat(coefD);
    	var finalA = (parseFloat(coefA) / coefTotal).toFixed(2);
    	var finalB = (parseFloat(coefB) / coefTotal).toFixed(2);
    	var finalC = (parseFloat(coefC) / coefTotal).toFixed(2);
    	var finalD = (parseFloat(coefD) / coefTotal).toFixed(2);
    };

	// Create two arrays one with the ratings and one with the coefficients
    var ratingArray = [ratA, ratB, ratC, ratD];
    var coefArray = [finalA, finalB, finalC, finalD];
	var nanCount = 0;

	/*if (coefA == 0 && coefB == 0 && coefC == 0 && coefD == 0) {
		return 0;
	}*/

	// It is necessary to check how many websites don't have a rating for that movie so that the score is still valid
    for (var i = 0; i < 4; i++) {
        if (isNaN(ratingArray[i])) {
            nanCount++;
        }; 
    };

	// If all websites have a score for this movie, just get the average
    if (nanCount === 0) {
        console.log("ratingArray: " + ratingArray);
        console.log("coefArray: " + coefArray);
        console.log("nanCount: " + nanCount);
        ratingDisplay = ((ratingArray[0] * coefArray[0]) + (ratingArray[1] * coefArray[1]) + (ratingArray[2] * coefArray[2]) + (ratingArray[3] * coefArray[3]));
        var finalResult = Math.round(ratingDisplay * 10) / 10;
        return finalResult;
    } else if (nanCount === 1) {
        for (var i = 0; i < 4; i++) {
            if (!isNaN(ratingArray[i])) {
                coefArray[i] = coefArray[i] * 1.33;
            } else {
                ratingArray[i] = 0;
                coefArray[i] = 0;
            }
        };
        console.log("ratingArray: " + ratingArray);
        console.log("coefArray: " + coefArray);
        console.log("nanCount: " + nanCount);
        ratingDisplay = ((ratingArray[0] * coefArray[0]) + (ratingArray[1] * coefArray[1]) + (ratingArray[2] * coefArray[2]) + (ratingArray[3] * coefArray[3]));
        var finalResult = Math.round(ratingDisplay * 10) / 10;
        return finalResult;
    // If two sites doen't have the movie, the other coefficients have to account for 50% of the score
    } else if (nanCount === 2) {
        for (var i = 0; i < 4; i++) {
            if (!isNaN(ratingArray[i])) {
                coefArray[i] = coefArray[i] * 2;
            } else {
                ratingArray[i] = 0;
                coefArray[i] = 0;
            }
        };
        console.log("ratingArray: " + ratingArray);
        console.log("coefArray: " + coefArray);
        console.log("nanCount: " + nanCount);
        ratingDisplay = ((ratingArray[0] * coefArray[0]) + (ratingArray[1] * coefArray[1]) + (ratingArray[2] * coefArray[2]) + (ratingArray[3] * coefArray[3]));
         var finalResult = Math.round(ratingDisplay * 10) / 10;
         return finalResult;
    // If only one website has the movie, his coefficient will have to account for 100% of the score, so the score won't be changed
    } else if (nanCount === 3) {
        for (var i = 0; i < 4; i++) {
            if (!isNaN(ratingArray[i])) {
                coefArray[i] = coefArray[i] * 4;
            } else {
                ratingArray[i] = 0;
                coefArray[i] = 0;
            }
        };
        console.log("ratingArray: " + ratingArray);
        console.log("coefArray: " + coefArray);
        console.log("nanCount: " + nanCount);
        ratingDisplay = ((ratingArray[0] * coefArray[0]) + (ratingArray[1] * coefArray[1]) + (ratingArray[2] * coefArray[2]) + (ratingArray[3] * coefArray[3]));
        var finalResult = Math.round(ratingDisplay * 10) / 10;
        return finalResult;
    };

}