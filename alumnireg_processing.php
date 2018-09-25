<?php
include('admin/db/database_configuration.php');
$sql = "SELECT alum_id FROM tblalumni ORDER BY alum_id DESC LIMIT 1";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()){
    $id = $row['alum_id'] + 1;
    } 
}
$conn->close();
?>
<?php
include('admin/db/database_configuration.php');

if(isset($_POST['submit'])) {
	if (empty($_POST['fname'])){$fname = 'NULL'; } else{ $fname ="'". mysqli_real_escape_string($conn, $_POST['fname']) . "'";}
	if (empty($_POST['mname'])){$mname = 'NULL'; } else{ $mname ="'". mysqli_real_escape_string($conn, $_POST['mname']) . "'";}
	if (empty($_POST['lname'])){$lname = 'NULL'; } else{ $lname ="'". mysqli_real_escape_string($conn, $_POST['lname']) . "'";}
	if (empty($_POST['gender'])){$gender = 'NULL'; } else{ $gender ="'". mysqli_real_escape_string($conn, $_POST['gender']) . "'";}
	if (empty($_POST['CivilStat'])){$civilstat = 'NULL'; } else{ $civilstat ="'". mysqli_real_escape_string($conn, $_POST['CivilStat']) . "'";}
	$bday = $_POST['bdate'];
	if (empty($_POST['address'])){$address = 'NULL'; } else{ $address ="'". mysqli_real_escape_string($conn, $_POST['address']) . "'";}
	if (empty($_POST['telnum'])){$telnum = 'NULL'; } else{ $telnum ="'". mysqli_real_escape_string($conn, $_POST['telnum']) . "'";}
	if (empty($_POST['mobnum'])){$mobnum = 'NULL'; } else{ $mobnum ="'". mysqli_real_escape_string($conn, $_POST['mobnum']) . "'";}
	if (empty($_POST['emailadd'])){$email = 'NULL'; } else{ $email ="'". mysqli_real_escape_string($conn, $_POST['emailadd']) . "'";}
	if (empty($_POST['yeargrad'])){$yeargrad = 'NULL'; } else{ $yeargrad ="'". mysqli_real_escape_string($conn, $_POST['yeargrad']) . "'";}
	if (empty($_POST['Department'])){$department = 'NULL'; } else{ $department ="'". mysqli_real_escape_string($conn, $_POST['Department']) . "'";}
	if (empty($_POST['Course'])){$course = 'NULL'; } else{ $course ="'". mysqli_real_escape_string($conn, $_POST['Course']) . "'";}
	// if (empty($_POST['awards'])){$awards = 'NULL'; } else{ $awards ="'". mysqli_real_escape_string($conn, $_POST['awards']) . "'";}
	if (empty($_POST['scholarships'])){$scholarships = 'NULL'; } else{ $scholarships ="'". mysqli_real_escape_string($conn, $_POST['scholarships']) . "'";}
	if (empty($_POST['attainment'])){$attainment = 'NULL'; } else{ $attainment ="'". mysqli_real_escape_string($conn, $_POST['attainment']) . "'";}
	if (empty($_POST['employed'])){$employed = 'NULL'; } else{ $employed ="'". mysqli_real_escape_string($conn, $_POST['employed']) . "'";}
	if (empty($_POST['empstatus'])){$empstatus = 'NULL'; } else{ $empstatus ="'". mysqli_real_escape_string($conn, $_POST['empstatus']) . "'";}
	if (empty($_POST['presoccup'])){$presoccup = 'NULL'; } else{ $presoccup ="'". mysqli_real_escape_string($conn, $_POST['presoccup']) . "'";}
	// if (empty($_POST['workadd'])){$workadd = 'NULL'; } else{ $workadd ="'". mysqli_real_escape_string($conn, $_POST['workadd']) . "'";}
	if (empty($_POST['gradstud'])){$gradstud = 'NULL'; } else{ $gradstud ="'". mysqli_real_escape_string($conn, $_POST['gradstud']) . "'";}
	if (empty($_POST['advstud'])){$advstud = 'NULL'; } else{ $advstud ="'". mysqli_real_escape_string($conn, $_POST['advstud']) . "'";}
	if (empty($_POST['participated'])){$participated = 'NULL'; } else{ $participated ="'". mysqli_real_escape_string($conn, $_POST['participated']) . "'";}
	if (empty($_POST['assist'])){$assist = 'NULL'; } else{ $assist ="'". mysqli_real_escape_string($conn, $_POST['assist']) . "'";}
	if (empty($_POST['programs'])){$programs = 'NULL'; } else{ $programs ="'". mysqli_real_escape_string($conn, $_POST['programs']) . "'";}
	if (empty($_POST['cts'])){$cts = 'NULL'; } else{ $cts ="'". mysqli_real_escape_string($conn, $_POST['cts']) . "'";}
	if (empty($_POST['solvecomplexprob'])){$scp = 'NULL'; } else{ $scp ="'". mysqli_real_escape_string($conn, $_POST['solvecomplexprob']) . "'";}
	if (empty($_POST['workwithother'])){$wwo = 'NULL'; } else{ $wwo ="'". mysqli_real_escape_string($conn, $_POST['workwithother']) . "'";}
	if (empty($_POST['learnind'])){$learnind = 'NULL'; } else{ $learnind ="'". mysqli_real_escape_string($conn, $_POST['learnind']) . "'";}
	if (empty($_POST['writtencommskills'])){$wcs = 'NULL'; } else{ $wcs ="'". mysqli_real_escape_string($conn, $_POST['writtencommskills']) . "'";}
	if (empty($_POST['spokencommskills'])){$scs = 'NULL'; } else{ $scs ="'". mysqli_real_escape_string($conn, $_POST['spokencommskills']) . "'";}
	if (empty($_POST['knowfield'])){$knowfield = 'NULL'; } else{ $knowfield ="'". mysqli_real_escape_string($conn, $_POST['knowfield']) . "'";}
	if (empty($_POST['workrelatedknow'])){$wrk = 'NULL'; } else{ $wrk ="'". mysqli_real_escape_string($conn, $_POST['workrelatedknow']) . "'";}
	if (empty($_POST['relevantdegree'])){$relevantdegree = 'NULL'; } else{ $relevantdegree ="'". mysqli_real_escape_string($conn, $_POST['relevantdegree']) . "'";}
	if (empty($_POST['impfctr'])){$impfactor = 'NULL'; } else{ $impfactor ="'". mysqli_real_escape_string($conn, $_POST['impfctr']) . "'";}
	if (empty($_POST['overall'])){$overall = 'NULL'; } else{ $overall ="'". mysqli_real_escape_string($conn, $_POST['overall']) . "'";}
	

	$query = "SELECT fname, mname, lname, birthdate, yeargrad, course, status FROM tblalumni_list_all WHERE (fname = $fname AND mname = $mname AND lname = $lname AND birthdate = '$bday' AND yeargrad = $yeargrad AND course = $course AND status = 'unregistered') ";
	$result = mysqli_query($conn, $query);

	if (mysqli_num_rows($result) > 0) {
		// 14. Awards...
		$awards ='';
        if(isset($_POST["awards"]) && is_array($_POST["awards"])){
            $awards = implode(", ", $_POST["awards"]); 
        }
		// end of 14

		// 26. Do you think you college degree....
		$comment ='';
        if(isset($_POST["comment"]) && is_array($_POST["comment"])){
            $comment = implode(", ", $_POST["comment"]); 
        }
        // end of 26
		

        // past employment variable
		if (isset($_POST['mytext'])) {
		foreach ( $_POST['mytext'] as $key=>$value ) {
		$values = mysqli_real_escape_string($conn, $value);
		$query = mysqli_query($conn,"INSERT INTO tblalumni_past_o (pastoccu, alum_id) VALUES ('".$values."', '$id')");
			}
		}
		// end of past employment

		$sql = "INSERT INTO tblAlumni (alum_id, fname, mname, lname, gender, civilstat, birthdate, address, telnum, mobnum, emailadd, yeargrad, department, course, awards, scholarships, attainment, employed, empstatus, presoccup, gradstud, advstud, participated, assist, programs, cts, solvecomplexprob, workwithother, learnind, writtencommskills, spokencommskills, knowfield, workrelatedknow, relevantdegree, norelevant, impfctr, overall, alum_status) 
			VALUES ('".$id."', $fname,$mname,$lname,$gender,$civilstat, '$bday', $address, $telnum, $mobnum, $email, $yeargrad, $department, $course, '$awards', $scholarships, $attainment, $employed, $empstatus, $presoccup, $gradstud, $advstud, $participated, $assist, $programs, $cts, $scp, $wwo, $learnind, $wcs, $scs, $knowfield, $wrk, $relevantdegree, '$comment', $impfactor, $overall, 2);";

		$sql .= "UPDATE tblalumni_list_all SET status = 'registered' WHERE fname=$fname";

		if (mysqli_multi_query($conn, $sql)) {
					echo '<script>window.location = "thanks?id='.$id.'"</script>';
				}
		else{
			echo "error";
		}

		mysqli_close($conn);
	}
	else{
		echo'<script>alert("Invalid Registration! Check the Spelling of your name, the birthdate, course and year graduated! or You are already been registered!")</script>';
		echo '<script>window.location = "alumnireg.php"</script>';//this is where the error
	}


}//end of if isset

?>