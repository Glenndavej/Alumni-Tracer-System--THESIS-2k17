<?php

	$id = $_GET['id'];
	include 'admin/db/database_configuration.php';

	$sql = "SELECT * FROM tbljoba WHERE job_id = '$id'";
	$result = $conn->query($sql);

	if ($result->num_rows > 0) {
	    while($row = $result->fetch_assoc()) {
			$job = $row['job_title'];
			$job_desc = $row['job_desc'];
			$quali = $row['job_qualifications'];
			$contact_name = $row['cont_name'];
			$contact_num = $row['contact_info'];
			$email = $row['employer_email'];
		}
	} 
	else {
	    echo "";
	}
	$conn->close();
?>
<!DOCTYPE html>
<html>
<head>
	<title><?php echo strtoupper($job); ?></title>
	<?php include ('link.php'); ?>
	<script>
    	window.onload = function() {
		  document.getElementById('homie').className = 'active';
		};
    </script>
</head>
<body style="font-family: Raleway;">
<?php include('topnav.php'); ?>
	<div class="container" style="margin-bottom: 50px;">
		<div style="margin-bottom: 20px;">
			<a href="view_job_offers.php" class="w3-btn w3-indigo" title="Back"><font size="3"><i class="fa fa-chevron-left" aria-hidden="true"></i></font></a><b> View Jobs</b>
		</div>
		<div class="col-md-6 col-md-offset-3 w3-card-4 w3-indigo" align="center">
			<font style="font-size: 30pt;"><b><?php echo strtoupper($job); ?></b></font>
		</div>
		<div class="col-md-6 col-md-offset-3 w3-card-4 w3-light-blue" style="padding: 20px;">
			<b>Objective:</b>
			<br>
			<div style="text-indent: 50px;">
				<?php echo wordwrap($job_desc,40,"<br>\n"); ?>
			</div>
			<b>Qualifications:</b>
			<br>
			<div style="margin-left: 50px;">
				<?php echo nl2br($quali); ?>
			</div>
			
			<div>
				<b>Contact:</b> <?php echo $contact_name; ?>
			</div>
			<div>
				<b>Contact #:</b> <?php echo $contact_num; ?>
			</div>
			<div>
				<b>Email Address:</b> <?php echo $email; ?>
			</div>
		</div>
	</div><!--end of container-->

</body>
	<?php include ('footer.php'); ?>
	<?php include ('script.php'); ?>
</html>