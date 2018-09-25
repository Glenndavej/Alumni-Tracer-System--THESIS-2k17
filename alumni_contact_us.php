<!DOCTYPE html>
<html>
<head>
	<title>Alumni</title>
	<?php include ('link.php'); ?>
	<?php include ('script.php'); ?>
	
    <style>
    	.desc {
    		padding: 10px;
    		font-family: Montserrat;
    	}
    	.activeLink {
		    background-color: #2980b9;
		}
	</style>
    <script>
    	$('.nav li a').bind('click', function(e) {
	    $('.activeLink').removeClass('activeLink');
	    $(this).addClass('activeLink');
	    return false;
	});
    </script>
</head>
<body style="font-family: Raleway;">
	<?php include('topnav.php'); ?>

	<div class="container">
		<div>
			<a href="contact_us" class="w3-btn w3-indigo" title="Back"><font size="4"><i class="fa fa-chevron-left" aria-hidden="true"></i></font></a><b> Alumni Gatherings</b>
		</div>

		<div class="col-md-10 col-md-offset-1 w3-white w3-card-4" style="padding: 20px; margin-bottom: 50px; margin-top: 80px;">

		<form method='post' action='alumni_album_name.php'>
		
			<font size="5"><b>What will you name your album?</b></font>
				<br>
				<font color="black">
				<input type="text" name="albumname" placeholder="Album Name" style="margin-bottom: 10px; padding: 5px;" />
				<br>
				<input type="submit" value="Create" class="w3-btn w3-green"/>
			</font>
		</form>
		</div>

	</div>
	<br><br>
</body>

	<?php include('active.php'); ?>
	<?php include('footer.php'); ?>
</html>