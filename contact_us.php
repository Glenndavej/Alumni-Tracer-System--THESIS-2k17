<!DOCTYPE html>
<html>
<head>
	<title>Contact Us</title>
	<?php include ('link.php'); ?>
	<?php include ('script.php'); ?>
	<style>
		.name{
			padding: 10px;
			font-size: 15pt;
			margin-bottom: 5px;
			height: 50px;
		}
		.email{
			padding: 10px;
			font-size: 15pt;
			margin-bottom: 5px;
			height: 50px;
		}
		.subject{
			padding: 10px;
			font-size: 15pt;
			margin-bottom: 5px;
			height: 50px;
		}
		#txtArea{
			padding: 10px;
			font-size: 15pt;
		}
		body{
			font-family: Raleway;
		}
	</style>
</head>
<body>
	<?php include('topnav.php'); ?>
	<div class="container">

		<div style="font-size:30pt; font-family: montserrat;"><i><b>LEAVE A MESSAGE</b></i></div> <br>
		<div class="col-md-4" style="margin-bottom: 65px;">
		
		<form action="submit_contact_us.php" method="post" >
			<input type="text" name="name" class="name form-control" placeholder="Your Name" style="font-family: Montserrat" required/><br>
			<input type="email" name="email" class="email form-control" placeholder="Your email" style="font-family: Montserrat" required/><br>
			<input type="text" name="subject" class="subject form-control" placeholder="Subject" style="font-family: Montserrat" required/><br>
			<textarea id="txtArea" name="message" class="form-control" onkeyup="resizeTextarea('txtArea')" data-resizable="true" placeholder="Message" style="font-family: Montserrat;" maxlength="255" required></textarea>
			<span id="chars">255</span> characters remaining

			<br>
			<button class="w3-btn w3-green" type = "submit" name="submit"><font size="5" style="font-family: Montserrat"><i class="fa fa-paper-plane" aria-hidden="true"></i> SEND</font></button>
		</form>
		<br><br>
		<a href="http://www.filamer.edu.ph" target="_blank"><font style="font-size: 20pt;"><i class="fa fa-facebook-official" aria-hidden="true"></i></font></a>
		</div>

		<div class="col-md-6 col-md-offset-2">
			<p style="color: black; font-size: 15pt;"><i class="fa fa-pencil" style="width: 20px;"></i>  Filamer Christian University Alumni Office </p>
			<p style="color: black; font-size: 15pt;"><i class="fa fa-map-marker" style="width: 20px;"> </i> Roxas Avenue, Roxas City, Capiz 5800 </span></p>
			<p style="color: black; font-size: 15pt;"><i class="fa fa-phone" style="width: 20px;"></i> Phone: (130) 6210-471 </p>
			<p style="color: black; font-size: 15pt;"><i class="fa fa-envelope" style="width: 20px;"></i> massmedia.fcu@gmail.com</p>
			
			<font style="font-family: montserrat; font-size: 14pt;">
			SEND PICTURES OF REUNION OF ALUMNI CHAPTER/GATHERINGS
			<br>
			<a href="alumni_contact_us" class="w3-btn w3-teal"><i class="fa fa-mouse-pointer" aria-hidden="true"></i> CLICK HERE</a>
			<br><br>
			ARE YOU AN EMPLOYER?
			<br>
			<a href="employer_contact_us" class="w3-btn w3-lime"><i class="fa fa-mouse-pointer" aria-hidden="true"></i> CLICK HERE</a>
			</font>
		</div>

	</div><!--end of container-->

</body>
<script>
	function resizeTextarea (id) {
	  var a = document.getElementById(id);
	  a.style.height = 'auto';
	  a.style.height = a.scrollHeight+'px';
	}

	function init() {
	  var a = document.getElementsByTagName('textarea');
	  for(var i=0,inb=a.length;i<inb;i++) {
	     if(a[i].getAttribute('data-resizable')=='true')
	      resizeTextarea(a[i].id);
	  }
	}

	addEventListener('DOMContentLoaded', init);
</script>
<!-- For 255 char remaining -->
<script>
	var maxLength = 255;
	$('textarea').keyup(function() {
	  var length = $(this).val().length;
	  var length = maxLength-length;
	  $('#chars').text(length);
	});
</script>
<?php include('active.php'); ?>
<?php include('footer.php'); ?>
</html>