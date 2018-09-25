<!DOCTYPE html>
<html>
<head>
	<title>Photo Gallery</title>
	<?php include ('admin/db/database_configuration.php'); ?>
    <?php include ('link.php'); ?>
	<?php include ('script.php'); ?>
</head>
<body style="background: #323A45; font-family: 'Raleway'; color: black;">
<?php include('topnav.php') ?>
<style>
/*album name ..*/
#albumname{
  width: 200px;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  }
 /*end of albumname..*/
#view_box img{
	width: 100%;
	height: 200px;
}
#view_box img:hover{
	-webkit-transform:scale(1.25); /* Safari and Chrome */
	-moz-transform:scale(1.25); /* Firefox */
	-ms-transform:scale(1.25); /* IE 9 */
	-o-transform:scale(1.25); /* Opera */
	transform:scale(1.25);
}
#view_box{
	width:219px;
	/*box-shadow: 0 0 10px #ccc;*/
	padding: 10px;
	margin: 5px;
	float: left;
}
</style>

<div class="container w3-card-4 w3-indigo">
	<div align="center" style="padding: 20px;">
	<font size="10"><b><i class="fa fa-picture-o" aria-hidden="true"></i> PHOTO ALBUMS</b></font>
	</div>
</div>
<div class="container w3-card-4 w3-light-blue" style="padding-top: 20px; padding-bottom: 40px;">
	<div class="col-md-10 col-md-offset-1" style="margin-top: 20px;">
		<?php include('photoalbum.php'); ?>
	</div>
</div><!-- end of container -->
<br><br><br>
</body>
<?php include('active.php'); ?>
<br>
<?php include ('footer.php'); ?>
</html>