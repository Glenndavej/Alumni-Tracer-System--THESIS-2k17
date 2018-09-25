<!DOCTYPE html>
<html>
<head>
	<title>View Job Offers</title>
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
			<a href="index.php" class="w3-btn w3-indigo" title="Back"><font size="3"><i class="fa fa-chevron-left" aria-hidden="true"></i></font></a><b> View Job offers</b>
		</div>

		<div class="col-md-8 col-md-offset-2 w3-card-4 w3-indigo" align="center">
			<font style="font-size: 40pt;"><b><i class="fa fa-briefcase" aria-hidden="true"></i> JOB OFFERS</b></font>
		</div>
		<div class="col-md-8 col-md-offset-2 w3-card-4 w3-light-blue">
		
	<?php 
		include ('admin/db/database_configuration.php');
		$sql = "SELECT job_id,job_title, job_desc, job_qualifications, cont_name, contact_info, employer_email FROM tbljoba WHERE job_status = 'approved' ORDER BY job_id DESC";
		$result = $conn->query($sql);

		if ($result->num_rows > 0) {
		// output data of each row
		while($row = $result->fetch_assoc()) {
			$id = $row['job_id'];
			$job = $row['job_title'];
			$job_desc = $row['job_desc'];
			$quali = $row['job_qualifications'];
			$contact_name = $row['cont_name'];
			$contact_num = $row['contact_info'];
			$email = $row['employer_email'];
	?>
	<a href="view_jobs.php?id=<?php echo $id;?>" style="text-decoration: none;">
		<ul type="square" style="font-size: 20pt;">
			<li><?php echo  strtoupper("<b><font size='6'>" . $job. "</font></b>"); ?></li>
		</ul>
	</a>
	<?php }
		} else {
			echo "";
		}
		$conn->close();
	?>
		</div>
	</div><!--end of container-->
</body>
	<?php include ('footer.php'); ?>
	<?php include ('script.php'); ?>
</html>