<!-- $sql = "SELECT * FROM tblfeatured WHERE yeargrad = year(curdate());"; -->
	<?php			
		$sql = "SELECT * FROM tblfeatured WHERE yeargrad ORDER BY id_alum DESC LIMIT 1";
		$result = $conn->query($sql);
		if 
		($result->num_rows > 0) 
		{            
				
		while ($row = $result->fetch_assoc()) {
				// Print out the contents of the entry 
		$id_alum = $row['id_alum'];
		$image = $row['image1'];
		
		echo "<div align='center' style='padding:10px; margin-top:80px;'>";
		echo "<a href='alumni?id=$id_alum' style='text-decoration:none;' class='jt'>";
    	echo "<img src='admin/featured_image/".$image."' style='width:250px; height:250px;' class='img1 img-thumbnail' title='".$row['fullname']."'>";
    	echo "<div style='margin-top:20px;'>";	
		echo "<font size='5'><b><p class='jt' style='color:black'>" . $row['fullname']. "</p></b></font>";
		echo "<p style='color:black'><i>" . $row['job_title'] . "</i></p>";
		echo "</div>";//end of margintop
		echo "</div>";//end of div align center
		echo "</a>";
		echo "<p style='color:black; width:100%; word-wrap: break-word;'>";
		echo "<i>" . stripslashes(substr(str_replace('\\r\\n','<br />',$row['description']),0,170));
		echo "<a href='alumni?id=$id_alum'>";
		echo "<b>" . "...Read More" . "</b></i></a><br>";
		echo "</p>";
			
		}
		} 
		else 
		{
		echo 'ERROR 404';
		}		
	?>
	 <!-- text-indent: 100px; -->
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
