<marquee behavior=scroll direction="Up" scrollamount="4" class="row w3-card-4 w3-white" style="height: 300pt;" truespeed>
	<p align="center"><font color="red" style="font-size: 60pt;"><b>JOB HIRING!!</b></font></p> 
	<div align="center">
	<br>
	<font size="4" color="red">
	<?php 
		$sql = "SELECT job_title, job_desc, job_qualifications, cont_name, contact_info, employer_email FROM tbljoba WHERE job_status = 'approved' ORDER BY job_id DESC LIMIT 3";
		$result = $conn->query($sql);

		if ($result->num_rows > 0) {
		    // output data of each row
			while($row = $result->fetch_assoc()) {
				echo strtoupper("<b><font size='8'>" . $row["job_title"]. "</font></b>");
				echo "<br><b>Objectives: </b>" .  $row["job_desc"]. "<br><br>";
				echo "<b>Qualifications: </b><br>" . nl2br($row['job_qualifications']) . "<br><br>";
				echo "<b>Contact: </b>" . $row["cont_name"]. "<br>";
				echo "" . $row["contact_info"]. "<br>";
				echo "" . $row["employer_email"]. "<br><br><br>";
			}
		} else {
			echo "None";
		}
		$conn->close();
	?>
	</font>
	</div>
</marquee>