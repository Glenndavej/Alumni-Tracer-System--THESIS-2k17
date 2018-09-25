<!DOCTYPE html>
<html>
<head>
	<title>Search</title>
	<?php include ('link.php'); ?>
	<?php include ('script.php'); ?>

</head>
<body style="font-family: 'Raleway'; ">
<?php include('topnav.php'); ?>
<div class="container" style="margin-bottom: 220px;">
	<?php include('admin/db/database_configuration.php') ?>
	<form method="post" action="" >
		<input type="text" name="search_alumni" placeholder="Search" style="padding:5px; height:35px;"/>
		Year:
		<select name="year" style="padding:5px; height:35px;">
			<option></option>
			<?php
				$year_grad=1995;
				while($year_grad<=2017)
				{
			?>
			<option>
				<?php echo $year_grad; ?>
			</option>
				<?php $year_grad++; } ?>
		</select>
		Department:
		<select name="deprtmnt" style="padding:5px; height:35px;">
			<option></option>
			<option>College of Computer Studies</option>
		</select>
		Course:
		<select name="kurs" style="padding:5px; height:35px;">
			<option></option>
			<option>Bachelor of Science in Information Technology</option>
			<option>Bachelor of Science in Computer Science</option>
			<option>Associate in Computer Science</option>
		</select>
		<input class="w3-btn w3-teal" type="submit" name="submit" value="Filter">
		<br>
		<?php include('display_selected_alumnilist.php'); ?>
		<?php include('search_alumni_list.php'); ?>


	</form>	

</div>
</body>
	<?php include('active.php'); ?>
	<?php include('footer.php'); ?>
</html>