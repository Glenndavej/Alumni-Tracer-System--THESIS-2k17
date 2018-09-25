<?php 
include('admin/db/database_configuration.php');
if (isset($_FILES["userfile"]) && !empty($_FILES["userfile"])) {
        $image = $_FILES['userfile']['tmp_name'];
        $imageName = $_FILES['userfile']['name'];
        $imageSize = $_FILES['userfile']['size'];
        $imageType = $_FILES['userfile']['type'];
        $albumName = $_POST['album_id_name'];
        $len = count($image);
        $path = "admin/images/";
        for ($i = 0; $i < $len; $i++) {
             if (isset($imageName[$i]) && $imageName[$i] !== NULL) {
                 if(move_uploaded_file($image[$i], $path.$imageName[$i])) {
                    $result = $conn->query("INSERT INTO tblPhotos (imageName, imageSize, imageType, album_id) VALUES ('$imageName[$i]', '$imageSize[$i]' , '$imageType[$i]', '$albumName' )");
                    echo"<script>alert('Image upload successfully! Thank you for sending your photos!');location.href='alumni_contact_us.php';</script>";
                 }

             }
        }
}
$conn->close();
// header("location: added_images_successful.php"); 
?>