<!DOCTYPE html>
<html>
<head>
	<title>View Album</title>
	<?php include ('admin/db/database_configuration.php'); ?>
    <?php include ('link.php'); ?>
	<?php include ('script.php'); ?>
	
	<style>

		* {
		  box-sizing: border-box;
		}

		.row > .column {
		  padding: 0 8px;
		}

		.row:after {
		  content: "";
		  display: table;
		  clear: both;
		}

		.column {
		  float: left;
		  width: 25%;
		}

		/* The Modal (background) */
		.modal {
		  display: none;
		  position: fixed;
		  z-index: 1;
		  padding-top: 100px;
		  left: 0;
		  top: 0;
		  width: 100%;
		  height: 100%;
		  overflow: auto;
		  background-color: black;
		}

		/* Modal Content */
		.modal-content {
		  position: relative;
		  background-color: #fefefe;
		  margin: auto;
		  padding: 0;
		  width: 90%;
		  max-width: 1200px;
		}

		/* The Close Button */
		.close {
		  color: white;
		  position: absolute;
		  top: 10px;
		  right: 25px;
		  font-size: 35px;
		  font-weight: bold;
		}

		.close:hover,
		.close:focus {
		  color: #999;
		  text-decoration: none;
		  cursor: pointer;
		}

		.mySlides {
		  display: none;
		}

		.cursor {
		  cursor: pointer
		}

		/* Next & previous buttons */
		.prev,
		.next {
		  cursor: pointer;
		  position: absolute;
		  top: 50%;
		  width: auto;
		  padding: 16px;
		  margin-top: -50px;
		  color: white;
		  font-weight: bold;
		  font-size: 20px;
		  transition: 0.6s ease;
		  border-radius: 0 3px 3px 0;
		  user-select: none;
		  -webkit-user-select: none;
		}

		/* Position the "next button" to the right */
		.next {
		  right: 0;
		  border-radius: 3px 0 0 3px;
		}

		/* On hover, add a black background color with a little bit see-through */
		.prev:hover,
		.next:hover {
		  background-color: rgba(0, 0, 0, 0.8);
		}

		/* Number text (1/3 etc) */
		.numbertext {
		  color: #f2f2f2;
		  font-size: 12px;
		  padding: 8px 12px;
		  position: absolute;
		  top: 0;
		}

		img {
		  margin-bottom: -4px;
		}

		.caption-container {
		  text-align: center;
		  background-color: black;
		  padding: 2px 16px;
		  color: white;
		}

		.demo {
		  opacity: 0.6;
		}

		.active,
		.demo:hover {
		  opacity: 1;
		}

		img.hover-shadow {
		  transition: 0.3s
		}

		.hover-shadow:hover {
		  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)
		}
	</style>
	
	<script>
    	window.onload = function() {
		  document.getElementById('photo').className = 'active';
		};
    </script>
</head>
<body style="background: #323A45; font-family: 'Raleway';">
<?php include('topnav.php') ?>
	
	<?php 
		$album_id = $_GET['id'];
		$query = mysqli_query($conn, "SELECT `album_id`,`albumName` FROM `tblalbums` WHERE album_id='$album_id'");
		while ($row = mysqli_fetch_array($query)) {
			$album_name = $row['albumName'];
		}
	?>

	<div class="container">
			<a href="photogallery_alumni" class="w3-btn w3-indigo" title="Back"><font size="3"><i class="fa fa-chevron-left" aria-hidden="true"></i></font></a><b><font size="4" color="white"> Album Name: <?php echo strtoupper($album_name); ?></font></b>
		</div>
<br>
		<div class="col-md-10 col-md-offset-1">
		<?php 
			$album_id = $_GET['id'];
			$query1 = mysqli_query($conn, "SELECT `img_id`,`imageName`,`album_id`,`imageDesc` FROM `tblphotos` WHERE album_id='$album_id'");
			$query2 = mysqli_query($conn, "SELECT `img_id`,`imageName`,`album_id`,`imageDesc` FROM `tblphotos` WHERE album_id='$album_id'");
			$query3 = mysqli_query($conn, "SELECT `img_id`,`imageName`,`album_id`,`imageDesc` FROM `tblphotos` WHERE album_id='$album_id'");

			$query4 = mysqli_query($conn, "SELECT COUNT(img_id) AS TOTAL FROM `tblphotos` WHERE album_id='$album_id'");
			$row = mysqli_fetch_array($query4);
				$count_total = $row['TOTAL'];
		?>
		<div class="row" style="margin-bottom:50px;">
			<?php 
				$count1 = 1;
				while ($row = mysqli_fetch_array($query1)) {
					$name = $row['imageDesc'];
					$url = $row['imageName'];
			?>
			  <div class="col-md-2">
			    <img src="admin/images/<?php echo $url;?>" style="width:100%; height:145px;" onclick="openModal();currentSlide(<?php echo $count1;?>)" class="hover-shadow cursor">
			  </div>
			<?php 
				$count1++;
				}
			?>
		</div><!--end of row-->
		
		<div id="myModal" class="modal">
		  <span class="close cursor" onclick="closeModal()"><font color="white"><i class="fa fa-window-close-o" aria-hidden="true"></i></font></span>
		  <div class="modal-content">
			<?php 
				$count2 = 1;
				while ($row = mysqli_fetch_array($query2)) {
					$name = $row['imageDesc'];
					$url = $row['imageName'];
			?>
		    <div class="mySlides">
		      	<div class="numbertext"><?php echo $count2;?> /  <?php echo $count_total; ?></div>
		      	<img src="admin/images/<?php echo $url; ?>" style="width:100%; height:550px;">
		    </div><!--end of myslides-->
		    <?php 
				$count2++;
				}
			?>
		    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
		    <a class="next" onclick="plusSlides(1)">&#10095;</a>

		    <div class="caption-container">
		      	<p id="caption"></p>
		    </div>
		    <?php 
				$count3 = 1;
				while ($row = mysqli_fetch_array($query3)) {
					$name = $row['imageDesc'];
					$url = $row['imageName'];
			?>

		    <div class="col-md-2">
		      	<img class="demo cursor" src="admin/images/<?php echo $url;?>" style="width:100%; height:100px; margin-bottom:10px;" onclick="currentSlide(<?php echo $count3;?>)" alt="<?php echo strtoupper($album_name); ?>">
		    </div>
		    <?php 
				$count3++;
				}
			?>
		  </div><!--end of modal-content-->
		</div><!--end of mymodal-->

	</div><!-- end of container -->
</body>
<?php include('active.php'); ?>
<br>
<?php include ('footer.php'); ?>
<script>
	function openModal() {
	  document.getElementById('myModal').style.display = "block";
	}

	function closeModal() {
	  document.getElementById('myModal').style.display = "none";
	}

	var slideIndex = 1;
	showSlides(slideIndex);

	function plusSlides(n) {
	  showSlides(slideIndex += n);
	}

	function currentSlide(n) {
	  showSlides(slideIndex = n);
	}

	function showSlides(n) {
	  var i;
	  var slides = document.getElementsByClassName("mySlides");
	  var dots = document.getElementsByClassName("demo");
	  var captionText = document.getElementById("caption");
	  if (n > slides.length) {slideIndex = 1}
	  if (n < 1) {slideIndex = slides.length}
	  for (i = 0; i < slides.length; i++) {
	      slides[i].style.display = "none";
	  }
	  for (i = 0; i < dots.length; i++) {
	      dots[i].className = dots[i].className.replace(" active", "");
	  }
	  slides[slideIndex-1].style.display = "block";
	  dots[slideIndex-1].className += " active";
	  captionText.innerHTML = dots[slideIndex-1].alt;
	}
</script>
</html>
	

