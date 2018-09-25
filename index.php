<!-- RewriteCond %{REQUEST_FILENAME} !-f
RewriteRule ^([^\.]+)$ $1.php [NC,L]  -->
<!DOCTYPE html>
<html>
<head>
	<title>Alumni Tracer</title>
	<?php include ('admin/db/database_configuration.php'); ?>
    <?php include ('link.php'); ?>
    <!-- SCRIPT ON TOP because leaflets ICONS -->
	<?php include ('script.php'); ?>
	<!-- Leaflet -->
	<link rel="stylesheet" type="text/css" href="http://cdn.leafletjs.com/leaflet/v0.7.7/leaflet.css" />
    <script type='text/javascript' src='http://cdn.leafletjs.com/leaflet/v0.7.7/leaflet.js'></script>
    
    <!-- To make HOME active -->
    <script>
    	window.onload = function() {
		  document.getElementById('homie').className = 'active';
		};
    </script>
</head>
	
<body class="demo" style="background-color:#323A45; font-family: 'Raleway';">
<div id="demo-content">

		<!-- <div id="loader-wrapper" style="z-index: 9999999;">
			<div id="loader"></div>

			<div class="loader-section section-left"></div>
            <div class="loader-section section-right"></div>

		</div> -->
<?php include('topnav.php'); ?>

	<div class="container">

		<div class="row" style="height: 500px;">
			<div class="col-md-8" style="background-color: white;">
 				<?php include ('carousel.php'); ?>
			</div>
			<div class="w3-indigo col-md-4" style="padding: 10px;">
				<?php include ('list_act.php'); ?>
			</div>
			<div>
			<a href="https://www.myamcat.com/jobs" style="margin-left: 10px;"><img src="admin/img/amcat.png"></a>
			</div>
		</div>
		
		<div class="row  w3-card-4 w3-indigo">
			<div class="col-md-11" align="center">
				<font size="10"><b><i class="fa fa-briefcase" aria-hidden="true"></i> JOB ANNOUNCEMENTS</b></font>
			</div>
			<div class="col-md-1">
				<font size="4"><a href="view_job_offers.php" title="View Job Announcements" style="text-decoration: none;"><i class="fa fa-eye" aria-hidden="true"></i> View</font></a>
			</div>
		</div>

		<?php include('marquee_job.php'); ?>
		
		<div class="row w3-card-4 w3-indigo" style="margin-top: 5px;" align="center">
			<div class="col-md-11" align="center">
				<font color="white" size="10">
				<i class="fa fa-map" aria-hidden="true"></i><i><b>ALUMNI CHAPTERS</b></i>
				</font>
			</div>
			<!-- <div class="col-md-1">
				<font size="4"><a href="#" style="text-decoration: none;"><i class="fa fa-eye" aria-hidden="true"></i> View</font></a>
			</div> -->
		</div>
		<div class="row">
			<div id="map" style="height: 440px; border: 1px solid #AAA; color: black;"></div>
		</div>
	</div><!--End of Container-->
	
	<?php include('leaflet.php'); ?>
</div>
</body>
	
<?php include('active.php'); ?>
<br>
<?php include ('footer.php'); ?>
</html>