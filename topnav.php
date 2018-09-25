

<div id="myTop" class="w3-top w3-container w3-padding-2 w3-theme w3-large">
  <!-- <i class="w3-opennav w3-hide-large w3-xlarge w3-margin-left w3-margin-right" onclick="w3_open()"></i> -->
  <div id="myIntro" class="w3-hide">
  <a href="index.php">
    <img src="admin/img/fcuautonomous.png" width="200px" height="50" style="padding:5px;">
  </a>
  </div>
</div>

<header class="w3-container w3-theme w3-padding-18 w3-blue" style="background-image: url(admin/img/top.jpg); background-size: 100% 100%;">
  <h1 class="w3-xxxlarge w3-padding-16">
  <a href="index.php">
    <img src="admin/img/fcuautonomous.png" width="400px">
  </a>
  </h1>
</header>

    <nav class="w3-card-4" style="background-color: #013275;">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
            <i class="fa fa-chevron-circle-down" aria-hidden="true"></i>                       
          </button>
          <!-- <a class="navbar-brand" href="index.php"><b><img src="admin/img/fculogo.png" height="35" width="35"></b></a> -->
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
          <ul class="nav navbar-nav navbar-right">
          
            <li><a id="homie" href="index"><font color="white"><span>Home</span></font></a></li>
            <li><a id="alumreg" href="alumnireg"><font color="white"><span>Alumni Registration</span></font></a></li>
            <li><a id="eve" href="news_events"><font color="white"><span>Events</span></font></a></li>
            <!-- <li><a href="job_opp.php"><font color="white">Job Oppurtunities</font></a></li> -->
            <li><a id="feat" href="featured_alum"><font color="white"><span>Featured Alumni</span></font></a></li>
            <li><a id="photo" href="photogallery_alumni"><font color="white"><span>Photo Gallery</span></font></a></li>
            <li><a id="contact" class="activeLink" href="contact_us"><font color="white"><span>Contact Us</span></font></a></li>
            <li><a id= "search" href="search_alumni"><font color="white"><span>Search Alumni</span></font></a></li>
          </ul>
        </div>
      </div>
    </nav>
  <br>
<style>
  /*STYLE/HOVER FOR THE TOPNAVIGATION*/
  .nav li span{
     cursor: pointer;
    display: inline-block;
    position: relative;
    transition: 0.5s;
  }
  .nav li span:after{
    content: '\00bb';
    position: absolute;
    opacity: 0;
    top: 0;
    right: 15px;
    transition: 0.5s;
  } 
  .nav li:hover span {
  padding-right: 15px;
  }
  .nav li:hover span:after {
  opacity: 1;
  right: 0;
  }
  /*END OF STYLE/HOVER*/
  /*active class in navigation*/
  .active {
  background-color:#2980b9;
  }
  /*END OF ACTIVE*/
  .nav li a:hover{
    background-color: #0452BC;
    /*font-size:18px;*/
  }
</style>
<script>
  // Change style of top container on scroll

window.onscroll = function() {scrollFunc()};
function scrollFunc() {
    if (document.body.scrollTop > 200 || document.documentElement.scrollTop > 200) {
        document.getElementById("myTop").classList.add("w3-blue","w3-card-4");
        document.getElementById("myIntro").classList.add("w3-show-inline-block");
    } else {
        document.getElementById("myIntro").classList.remove("w3-show-inline-block");
        document.getElementById("myTop").classList.remove("w3-blue","w3-card-4");
    }
}


</script>
<!-- for top nav to be not overlapped by the indicators of carousel -->

<style>
  .w3-card-4.w3-blue{z-index: 99999;}
</style>
<!-- end of style for top nav to be not overlapped -->