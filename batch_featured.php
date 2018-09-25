<?php
	include("admin/db/database_configuration.php");

	$year=$_GET['year'];
	mysqli_query($conn, "SELECT * FROM tblfeatured WHERE yeargrad = $year;") or die (mysqli_error());
	
?>
<!DOCTYPE html>
<html>
<head>
	<title>Batch <?php echo $year; ?></title>
	<?php include ('admin/db/database_configuration.php'); ?>
    <?php include ('link.php'); ?>

	<style>
		p {
			margin:0;
			padding:0;
		}
		.img1:hover{
			/*border:2pt solid black;*/
			-webkit-transform:scale(1.25); /* Safari and Chrome */
		    -moz-transform:scale(1.25); /* Firefox */
		    -ms-transform:scale(1.25); /* IE 9 */
		    -o-transform:scale(1.25); /* Opera */
		     transform:scale(1.25);
		}
	</style>
	<script>
    	window.onload = function() {
		  document.getElementById('feat').className = 'active';
		};
    </script>
</head>
<body style="font-family: 'Raleway';">
<?php include('topnav.php'); ?>

<div class="container" style="margin-bottom: 50px;">
<a href="featured_alum" class="w3-btn w3-indigo" title="Back"><font size="3"><i class="fa fa-chevron-left" aria-hidden="true"></i></font></a><b> Featured Alumni</b>/ Batch <?php echo $year ?>
	<div>
	<?php			
		$sql = "SELECT * FROM tblfeatured WHERE yeargrad = $year;";
		$result = $conn->query($sql);
		if 
		($result->num_rows > 0) 
		{            
				
		while ($row = $result->fetch_assoc()) {
				// Print out the contents of the entry 
		$id_alum = $row['id_alum'];
		$image = $row['image1'];
		echo "<div align='center' class='col-md-4' style='padding:50px; height:400px;'>";
		echo "<a href='alumni?id=$id_alum' style='text-decoration:none;' class='jt'>";
    	echo "<img src='admin/featured_image/".$image."' style='width:250px; height:250px;' class='img1 img-thumbnail' title='".$row['fullname']."'>";
    	echo "<div style='margin-top:20px;'>";	
		echo "<font size='5'><b><p class='jt' style='color:black'>" . $row['fullname']. "</p></b></font>";
		echo "<p style='color:black'><i>" . $row['job_title'] . "</i></p>";
		echo "</a>";
		echo "</div>"; // end of font
		echo "</div>"; //end of col-md-4
		}
		} 
		else 
		{
		echo 'ERROR 404';
		}		
	?>
	</div>
</div><!-- end of container -->


</body>
	<?php include ('script.php'); ?>
	<?php include ('footer.php'); ?>
</html>