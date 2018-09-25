<!-- OB_START sadto -->

<!DOCTYPE html>
<html>
<head>
	<title>Alumni Registration</title>
	<meta charset="utf-8">
	<?php include ('link.php'); ?>
	<?php include ('script.php'); ?>
	<!-- <link rel="stylesheet" href="docsupport/style.css"> -->
</head>
<body style="font-family: 'Raleway';">
<?php include('topnav.php');?>
<div class="container" style="margin-bottom: 50px;">

	<p style="font-size:18pt;">To Baptist Home School/Filamer Christian Institute/Filamer Christian College/Filamer Christian University alumni all over the world, your alma mater is happy to connect with and hear from you!
	<br>
	We are updating our Alumni database from time to time and since most of you are working or living abroad and in other places, we have prepared this online tracer for you to fill up with and update us of your latest information and data.</p>

	<?php include('alumniregform.php'); ?>

</div>
<?php include ('footer.php'); ?>
<?php include('active.php'); ?>
	<!-- Script for add fields dynamically -->
	<script>
		
		$(document).ready(function() {
	    var max_fields      = 10; //maximum input boxes allowed
	    var wrapper         = $(".input_fields_wrap"); //Fields wrapper
	    var add_button      = $(".add_field_button"); //Add button ID
	    
	    var x = 1; //initlal text box count
	    $(add_button).click(function(e){ //on add input button click
	        e.preventDefault();
	        if(x < max_fields){ //max input box allowed
	            x++; //text box increment
	            $(wrapper).append('<div><input id="field_'+ x +'" class="w3-border" type="text" name="mytext[]" placeholder = "Past Occupation & Company" style="width:350px; margin-top: 10px;  padding:8px;"/>&nbsp;<a href="#" class="remove_field w3-btn w3-red" title="Remove"><i class="fa fa-times" aria-hidden="true"></i></a></div>'); //add input box
	        }
	    });
	    
	    $(wrapper).on("click",".remove_field", function(e){ //user click on remove text
	        e.preventDefault(); $(this).parent('div').remove(); x--;
	    })
	});

	</script>
	<!-- end of add fields dynamically -->
</body>
</html>