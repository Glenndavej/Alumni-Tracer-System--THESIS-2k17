<!DOCTYPE html>
<html>
<head>
	<title>Employer</title>
	<?php include ('link.php'); ?>
	<?php include ('script.php'); ?>
	
   <!-- To make HOME active -->
    <script>
    	window.onload = function() {
		  document.getElementById('contact').className = 'active';
		};
    </script>
</head>
<body style="font-family: Raleway;">
	<?php include('topnav.php'); ?>
	<div class="container">
	<div>
		<a href="contact_us" class="w3-btn w3-indigo" title="Back"><font size="4"><i class="fa fa-chevron-left" aria-hidden="true"></i></font></a><b> Employer</b>
	</div>
		<div class="w3-card-4 w3-white col-md-6 col-md-offset-3" style="padding: 20px; margin-bottom: 50px;">

		<form action="submit_employer_contact_us.php" method="post" >
			<input type="text" name="title" placeholder="JOB TITLE" style="font-family: Montserrat; padding: 5px; width: 100%; margin-bottom: 10px;" required /><br>
			<input type="text" name="desc" placeholder="JOB DESCRIPTION" style="font-family: Montserrat; padding: 5px; width: 100%; margin-bottom: 20px;" required /><br>
			<!-- <input type="text" name="quali" placeholder="QUALIFICATIONS" style="font-family: Montserrat;"/><br> -->
			<div class="input_fields_wrap">
				<div><input type="text" name="quali[]" placeholder="QUALIFICATIONS" style="font-family: Montserrat; padding: 5px; width: 90%; margin-bottom: 10px;" required/><button class="w3-btn w3-green add_field_button" title="Add Qualifications" style="margin-left: 5px;"><i class="fa fa-plus-circle" aria-hidden="true"></i></button></div>
			</div>
			<input type="text" name="name_cont" placeholder="NAME OF CONTACT" style="font-family: Montserrat; padding: 5px; width: 100%; margin-bottom: 10px; margin-top: 10px;" required/><br>
			<input type="text" name="contact" oninput="this.value=this.value.replace(/[^0-9]/g,'');" placeholder="CONTACT #" style="font-family: Montserrat; padding: 5px; width: 100%; margin-bottom: 10px;" required/><br>
			<input type="email" name="email_add" placeholder="EMAIL ADDRESS" style="font-family: Montserrat; padding: 5px; width: 100%; margin-bottom: 10px;" required/><br>
			<button class="w3-btn w3-green" type = "submit" name="submit">
			<font size="5" style="font-family: Montserrat;"><i class="fa fa-paper-plane" aria-hidden="true"></i> SEND</font>
			</button>
		</form>
		
		</div>
	</div>
</body>

	<?php include('active.php'); ?>
	<?php include('footer.php'); ?>

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
            $(wrapper).append('<div><input type="text" name="quali[]" placeholder="QUALIFICATIONS" style="font-family: Montserrat; padding: 5px; width: 90%; margin-bottom: 10px;"/><button class="w3-btn w3-red remove_field" title="Remove Qualifications" style="margin-left: 5px;"><i class="fa fa-minus-circle" aria-hidden="true"></i></button></div>'); //add input box
        }
    });
    
    $(wrapper).on("click",".remove_field", function(e){ //user click on remove text
        e.preventDefault(); $(this).parent('div').remove(); x--;
    })
});

</script>
</html>