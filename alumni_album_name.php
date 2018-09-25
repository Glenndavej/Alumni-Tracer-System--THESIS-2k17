<?php
	include('admin/db/database_configuration.php');

		if(isset($_POST['albumname'])) {

			$name = $_POST['albumname'];
			$stat = 'Pending';
			if(empty($name)){
				echo"<script>alert('Please Enter Album Name');location.href='add_photos.php';</script>";
			} 
			else {
				$stmt = $conn->prepare("INSERT INTO `tblalbums` (albumName, album_status) VALUES(?, ?)") or die(mysqli_error($conn));
        		$stmt->bind_param("ss", $name, $stat); //bind to param
				if($stmt->execute()){
		            $stmt->close();
		            $conn->close();
		            echo '<script>alert("Successfully Saved")</script>';
		            echo '<script>window.location = "alumni_addphoto_toalbum.php"</script>';
		        }else{
		            echo '<script>alert("Album is already been used, Please use another name!")</script>';
		            echo '<script>window.location = "alumni_addphoto_toalbum.php"</script>';
		        }
			}
}
?>