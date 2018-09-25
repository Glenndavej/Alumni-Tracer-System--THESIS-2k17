	<?php
		include("admin/db/database_configuration.php");

		$id_alum=$_GET['id'];
		$query = "SELECT * FROM tblfeatured WHERE id_alum = $id_alum";
		$query_result = $conn->query($query);
		if ($query_result->num_rows > 0) {
		    // output data of each row
		    while($row = $query_result->fetch_assoc()) {
			$alumni_name=$row['fullname'];
	?>
<!DOCTYPE html>
<html>
<head>
	<title><?php echo $alumni_name; ?></title>
	<?php include ('admin/db/database_configuration.php'); ?>
    <?php include ('link.php'); ?>
    <?php include ('script.php'); ?>
    <script>
    	window.onload = function() {
		  document.getElementById('feat').className = 'active';
		};
    </script>
</head>

<body style="background-color:#323A45; font-family: 'Raleway';">
<?php include('topnav.php'); ?>
<font color="white">
<div class="container">
<div>
<a href="featured_alum" class="w3-btn w3-indigo" title="Back"><font size="4"><i class="fa fa-chevron-left" aria-hidden="true"></i></font></a><b> Featured Alumni</b>
</div>		
		<div class="col-md-10 col-md-offset-1">
		<?php
		
		    	$image = $row['image1'];
		    	echo "<div align='center'>";
		        echo "<img src='admin/featured_image/".$image."' width='500' height='400'>";
		?>
		<div style="margin-top: 20px;">
		<b>
			<span class="w3-light-blue" style="padding: 10px; font-size: 10pt;">
			<?php 
			if ($row['course'] === 'Bachelor of Science in Information Technology') {
			    echo "BSIT";
			}
			elseif ($row['course'] === 'Bachelor of Science in Computer Science') {
				echo "BSCS";
			}
			else{
				echo "";
			}
			?>
			<a href="batch_featured?year=<?php echo $row['yeargrad']; ?>"><?php echo $row['yeargrad']; ?></a>
		</b>
			</span>
		</div>
		<?php
		        echo "<font size='6'>" . $row["fullname"] . " " . "</font><br>";
		        echo "<i>" . $row["job_title"] . " " . "</i><br>";
		        echo "</div>";
		        echo "<br>";
		        echo "<div>";
		        echo "<p style='color: white; width:100%; word-wrap: break-word;'>";
		        echo "" . stripslashes(str_replace('\\r\\n','<br />',$row["description"])) . " " . "<br>";
		        echo "</p>";
		        echo "<p style='color: white; width:100%; word-wrap: break-word;'>";
		        echo "" . stripslashes(str_replace('\\r\\n','<br />',$row["description2"])) . " " . "";
		        echo "</p>";
		        echo "</div>";

			    }
			} else {
				echo '<script>window.location = "error404"</script>';
			}
			$conn->close();

		?>
		<!-- text-indent:100px; -->
		</div>
</div><!--end of container-->
</font>
</body>
<?php include('active.php'); ?>
<br>
<?php include ('footer.php'); ?>
</html>