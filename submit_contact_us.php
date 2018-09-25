<?php  
include 'admin/db/database_configuration.php';
if(isset($_POST['submit'])){
    if (empty($_POST['name'])){$fullname = 'NULL'; } else{ $fullname ="'". mysqli_real_escape_string($conn, $_POST['name']) . "'";}
    if (empty($_POST['email'])){$email_ad = 'NULL'; } else{ $email_ad ="'". mysqli_real_escape_string($conn, $_POST['email']) . "'";}
    if (empty($_POST['subject'])){$thesubj = 'NULL'; } else{ $thesubj ="'". mysqli_real_escape_string($conn, $_POST['subject']) . "'";}
    if (empty($_POST['message'])){$message = 'NULL'; } else{ $message ="'". mysqli_real_escape_string($conn, $_POST['message']) . "'";}
   
    $sql = "INSERT INTO tblmessages (name, email_ad, subject, message, date_submitted)
    VALUES ($fullname, $email_ad, $thesubj, $message, CURRENT_TIMESTAMP)";

    if ($conn->query($sql) === TRUE) {
        echo '<script>alert("Successfully Sent")</script>';
        echo '<script>window.location = "contact_us.php"</script>';
    } else {
        echo '<script>alert("Error")</script>';
        echo '<script>window.location = "contact_us.php"</script>';
    }
}
$conn->close();
?>