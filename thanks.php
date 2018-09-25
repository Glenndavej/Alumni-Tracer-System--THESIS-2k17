<?php
	$id = $_GET['id'];
	include('admin/db/database_configuration.php');
	$sql = "SELECT * FROM tblalumni WHERE alum_id = $id";
	$result = $conn->query($sql);

	if ($result->num_rows > 0) {
	    // output data of each row
	    while($row = $result->fetch_assoc()){
	    $id = $row['alum_id'];
	    $fname = $row['fname'];
	    $mname = $row['mname'];
	    $lname = $row['lname'];
	    } 
	}
	else
		echo "";
	$conn->close();
?>
<!DOCTYPE html>
<html>
<head>
	<title>Thank You!</title>
</head>
	<?php include ('link.php'); ?>
	<?php include ('script.php'); ?>
<body>
<?php include ('topnav.php'); ?>
<div class="container" style="margin-bottom: 100px;">
<div class="col-md-10 col-md-offset-1">
	<div class="w3-panel w3-teal" align="center" style="padding:20px;">
	    <font style="font-size: 30pt;"><b><?php echo $lname; ?>, <?php echo $fname; ?> <?php echo $mname; ?></b></font>
	    <br>
	    <font size="6">You've been successfully registered in the system! Thank you and God bless!</font>
	    <br>
		<a class = "w3-btn w3-cyan" href = "alumnireg.php"><font color="white" size="4"><b>Back</b></font></a>  
	</div>
</div>
</div>
<?php include ('footer.php'); ?>
<?php include ('active.php'); ?>
</body>
</html>