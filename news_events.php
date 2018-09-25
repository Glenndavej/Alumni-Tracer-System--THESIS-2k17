<!DOCTYPE html>
<html>
<head>
	<title>Alumni Registration</title>
	<?php include ('admin/db/database_configuration.php'); ?>
	<?php include ('link.php'); ?>
	<?php include ('script.php'); ?>
	<!-- <link rel="stylesheet" href="docsupport/style.css"> -->
	
</head>
<body style="background-color:#323A45; font-family: 'Raleway';">
<?php include('topnav.php');?>

<div class="container">

	<div class="w3-card-4 w3-indigo" align="center" style="padding:30px;">
		<font size="10" color="white">
		<i class="fa fa-newspaper-o" aria-hidden="true">
		</i> <b>EVENTS</b>
		</font>
	</div>
	
	
	<div class="col-md-12 w3-card-4 w3-light-blue" style="padding:20px;">

		<div class="col-md-5">
			<?php			
				$sql = "SELECT * FROM tblAct ORDER BY date_from DESC";
				$result = $conn->query($sql);
				if 
				($result->num_rows > 0) 
				{            
						
				while ($row = $result->fetch_assoc()) {
					$na_id = $row['na_id'];
						// Print out the contents of the entry 
				echo "<a href='view_events?id=" . $na_id . "' style='text-decoration:none;'> ";
				echo "<ul type='square'><font size='6'><b><li>" . $row['a_name']. "</b></font>";
				echo "<br>";
				echo date('F d, Y',strtotime($row['date_from']));
				echo " - " . date('F d, Y',strtotime($row['date_to']));
				echo "</ul>";
				echo "</a>";
				}
				} 
				else 
				{
				echo '';
				}		
			?>
		</div>
		<div class="col-md-6 col-md-offset-1 w3-white w3-padding-12">
		<?php include('calendar_events.php'); ?>
		</div>
	</div>

	
	
</div>
<br>
<?php include ('footer.php'); ?>
<?php include('active.php'); ?>
</body>
</html>