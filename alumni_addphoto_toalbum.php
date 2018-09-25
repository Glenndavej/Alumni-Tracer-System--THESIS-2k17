<!DOCTYPE html>
<html>
<head>
	<title>Alumni Add Photo</title>
	<?php include ('link.php'); ?>
	<?php include ('script.php'); ?>
	<style>
    	.desc {
    		padding: 10px;
    		font-family: Montserrat;
    	}
    	.activeLink {
		    background-color: #2980b9;
		}
	</style>
	<script>
    	$('.nav li a').bind('click', function(e) {
	    $('.activeLink').removeClass('activeLink');
	    $(this).addClass('activeLink');
	    return false;
	});
    </script>
</head>
<body style="font-family: Raleway;">
	<?php include('topnav.php'); ?>
	<div class="container" style="margin-bottom: 150px; margin-top: 20px;">
	
		<?php include'upload_preview.php' ?>
		<div class="col-md-10 col-md-offset-1 w3-white w3-card-4" style="padding: 20px;">
		<form method="post" enctype="multipart/form-data" autocomplete="off">
		<font>SELECT YOUR ALBUM</font>
		<select class="w3-input w3-border" name="album_id_name" style="width: 250px;">
			<?php include ('admin/db/database_configuration.php');
				$query = "SELECT `album_id`,`albumName` FROM tblalbums WHERE album_status = 'Pending' ORDER BY album_id DESC";
				$result = $conn->query($query);
				if
					($result->num_rows > 0) 
					{  
				while ($row = $result->fetch_assoc()) {
					$album_id = $row['album_id'];
					$album_name = $row['albumName'];
					echo "<option value='$album_id'>$album_name</option>";
					}
				}
			?>
		</select>
			<!-- <?php include'admin/upload-preview.php' ?> -->
			<br><br>
			Select photo to send
			<div class="col-sm-12" id="result"> </div>
			<input id="files" type="file" name="userfile[]" multiple/><br>
			        
			<button class="btn btn-danger" type="button" id="clear">CLEAR</button>
			        
			<button id="yes" type="submit" name="save" formaction="file-upload-employer.php" class="btn btn-success">UPLOAD</button>
		</form>
		</div>

	</div>
</body>
	<?php include('active.php'); ?>
	<?php include('footer.php'); ?>
</html>