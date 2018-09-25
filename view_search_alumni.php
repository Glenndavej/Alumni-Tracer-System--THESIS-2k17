<!DOCTYPE html>
<html>
<head>
	<title>Search</title>
	<?php include ('link.php'); ?>
	<?php include ('script.php'); ?>
	<script>
    	window.onload = function() {
		  document.getElementById('search').className = 'active';
		};
    </script>
</head>
<body style="font-family: 'Raleway'; ">
<?php include('topnav.php'); ?>
	<?php
		$id = $_GET['id'];
		include 'admin/db/database_configuration.php';

		$sql = "SELECT * FROM tblalumni where alum_id = '$id'";
		$result = $conn->query($sql);

		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
			$fname = $row['fname'];
			$mname = $row['mname'];
			$lname = $row['lname'];
			$presocc = $row['presoccup'];
			$email = $row['emailadd'];
	?>
	<div class="container">
		<?php echo $lname; ?>, <?php echo $fname; ?><?php echo $mname; ?>
		
	</div>
	<?php	    
			}
				
		} else {
			echo "";
		}
		$conn->close();

	?>
</body>
	<?php include('active.php'); ?>
	<?php include('footer.php'); ?>
</html>