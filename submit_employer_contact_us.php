<?php  
include 'admin/db/database_configuration.php';
if(isset($_POST['submit'])){
    $job_title = $_POST['title'];
    $job_desc = $_POST['desc'];

    $qualifications ="";
        if(isset($_POST["quali"]) && is_array($_POST["quali"])){
            $qualifications = implode("\n", $_POST["quali"]); 
        }
    $name_contact = $_POST['name_cont'];
    $contact_num = $_POST['contact'];
    $email_cont = $_POST['email_add'];
    $status = 'pending';

    $stmt = $conn->prepare("INSERT INTO `tbljoba` (job_title, job_desc, job_qualifications, cont_name, contact_info, employer_email, job_status) VALUES(?,?,?,?,?,?,?)") or die(mysqli_error($conn));
    $stmt->bind_param("sssssss", $job_title, $job_desc, $qualifications, $name_contact, $contact_num, $email_cont, $status); //bind to param

    if($stmt->execute()){
            $stmt->close();
            $conn->close();
            echo '<script>alert("Successfully Sent")</script>';
            echo '<script>window.location = "employer_contact_us.php"</script>';
        }else{
            echo '<script>alert("Error")</script>';
        }
}
$conn->close();
?>