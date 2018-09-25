
	<span style="font-size: 40pt;"><strong><i class="fa fa-newspaper-o" aria-hidden="true"></i> EVENTS</strong></span>
	<hr>
		
	<?php			
		$sql = "SELECT * FROM tblAct ORDER BY date_from DESC LIMIT 3";
		$result = $conn->query($sql);
		if 
		($result->num_rows > 0) 
		{            
				
		while ($row = $result->fetch_assoc()) {
			$na_id = $row['na_id'];
			$date = $row['date_from'];
		echo "<a href='view_events?id=" . $na_id . "' style='text-decoration:none;'> ";
		echo "<ul type='square'><font size='4'><b><li>" . $row['a_name']. "</b></font>";
		echo "<br>";
		echo date('F d, Y',strtotime($date));
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
	<div style="float: right;"><a href="news_events" style="text-decoration:none;"><b> More <i class="fa fa-chevron-right" aria-hidden="true"></i></b></a></div><br>