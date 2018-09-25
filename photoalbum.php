<?php 

	$query = mysqli_query($conn, "SELECT `album_id`,`albumName` FROM tblalbums WHERE album_status = 'Approved'");
	while($row = mysqli_fetch_array($query)){
		$album_id = $row['album_id'];
		$album_name = $row['albumName'];

		$query1 = mysqli_query($conn, "SELECT `img_id`,`imageName`,`album_id` FROM tblphotos WHERE `album_id`='$album_id'");
		$row1 = mysqli_fetch_array($query1);
		$pic = $row1['imageName'];
			
?>
	<a href='view?id=<?php echo $album_id;?>?album=<?php echo $album_name;?>' title='<?php echo $album_name; ?>'>
		<div id = "view_box" align="center" class="w3-pale-blue" style="margin-bottom: 20px;">
			<img src="admin/images/<?php echo $pic;?>" class="img-thumbnail" title="<?php echo $album_name ?>"/>
			<br><br>
			<div id="albumname">
				<b><font size="4" color="black"><b><?php echo strtoupper($album_name); ?></b></font></b>
			</div>
		</div>
	</a>
<?php 
	}
?>
