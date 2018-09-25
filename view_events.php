<?php

	$id = $_GET['id'];
	include 'admin/db/database_configuration.php';

	$sql = "SELECT * FROM tblact where na_id = '$id'";
	$result = $conn->query($sql);

	if ($result->num_rows > 0) {
	    while($row = $result->fetch_assoc()) {
	    	$a_name = $row['a_name'];
	       	$d_from = $row['date_from'];
	       	$d_to = $row['date_to'];
	       	$content = $row['content'];
	       	$venue = $row['venue'];
	    }
	} else {
	    echo "";
	}
	$conn->close();
?>
<!DOCTYPE html>
<html>
<head>
	<title><?php echo strtoupper($a_name); ?></title>
    <?php include ('link.php'); ?>
</head>
<body style="font-family: 'Raleway';">
	<?php include('topnav.php'); ?>
	<div class="container" style="margin-bottom: 75px;">
	<div style="margin-bottom: 20px;">
		<a href="news_events.php" class="w3-btn w3-indigo" title="Back"><font size="3"><i class="fa fa-chevron-left" aria-hidden="true"></i></font></a><b> Events</b>
	</div>
		<div class="col-md-8 col-md-offset-2 w3-card-4 w3-light-blue" style="padding: 22px;">
			<font size="10"><b><?php echo strtoupper($a_name); ?></b></font><br> <?php echo $venue; ?>
			<div>
				<i><?php echo date('F d, Y',strtotime($d_from)); ?> - <?php echo date('F d, Y',strtotime($d_to)); ?></i><br><br>
				<?php echo stripslashes(str_replace('\\r\\n','<br />',$content)); ?>
			</div>
		</div>
	</div><!--end of container-->
</body>
	<?php include('script.php'); ?>
	<?php include('active.php'); ?>
	<br>
	<?php include ('footer.php'); ?>
</html>