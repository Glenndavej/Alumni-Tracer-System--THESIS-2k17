<!DOCTYPE html>
<html>
<head>
	<title>Alumni Tracer</title>
	<?php include ('admin/db/database_configuration.php'); ?>
    <?php include ('link.php'); ?>
    <?php include ('script.php'); ?>
    <style>
    	.archives .batch{
    		text-decoration: none;
    	}
    </style>
</head>
<body style="background-color:#323A45; font-family: 'Raleway';">
<?php include('topnav.php'); ?>
	<div class="container">
		<div class="row">
			<div class="col-md-12 w3-indigo" align="center"  style="padding:30px;">
				<font size="10"><strong><i class="fa fa-users" aria-hidden="true"></i> FEATURED ALUMNI</font></strong>
			</div>
		</div>
		<div class="row w3-light-blue" style="margin-bottom: 80px;">
			<div class="col-md-6 col-md-offset-2 w3-cyan" style="margin-top: 40px; margin-right: 20px; padding: 20px;">
				<?php include('featured.php'); ?>
			</div>

			<div class="col-md-2 pull-right w3-cyan archives" align="center" style="margin:20px; padding: 10px;">
			<div class="w3-indigo"><b><font size="5">ARCHIVES</font></b></div>
			
			<ul><!-- <ul class="list-unstyled"> -->
				<li>
					<a href="batch_featured?year=1995" class="batch">BATCH 1995</a>
				</li>
				<li class="96">
					<a href="batch_featured?year=1996" class="batch">BATCH 1996</a>
				</li>
				<li class="97">
					<a href="batch_featured?year=1997" class="batch">BATCH 1997</a>
				</li>
				<li class="98">
					<a href="batch_featured?year=1998" class="batch">BATCH 1998</a>
				</li>
				<li class="99">
					<a href="batch_featured?year=1999" class="batch">BATCH 1999</a>
				</li>
				<li class="00">
					<a href="batch_featured?year=2000" class="batch">BATCH 2000</a>
				</li>
				<li class="01">
					<a href="batch_featured?year=2001" class="batch">BATCH 2001</a>
				</li>
				<li class="02">
					<a href="batch_featured?year=2002" class="batch">BATCH 2002</a>
				</li>
				<li class="03">
					<a href="batch_featured?year=2003" class="batch">BATCH 2003</a>
				</li>
				<li class="04">
					<a href="batch_featured?year=2004" class="batch">BATCH 2004</a>
				</li>
				<li class="05">
					<a href="batch_featured?year=2005" class="batch">BATCH 2005</a>
				</li>
				<li class="06">
					<a href="batch_featured?year=2006" class="batch">BATCH 2006</a>
				</li>
				<li class="07">
					<a href="batch_featured?year=2007" class="batch">BATCH 2007</a>
				</li>
				<li class="08">
					<a href="batch_featured?year=2008" class="batch">BATCH 2008</a>
				</li>
				<li class="09">
					<a href="batch_featured?year=2009" class="batch">BATCH 2009</a>
				</li>
				<li class="10">
					<a href="batch_featured?year=2010" class="batch">BATCH 2010</a>
				</li>
				<li class="11">
					<a href="batch_featured?year=2011" class="batch">BATCH 2011</a>
				</li>
				<li class="12">
					<a href="batch_featured?year=2012" class="batch">BATCH 2012</a>
				</li>
				<li class="13">
					<a href="batch_featured?year=2013" class="batch">BATCH 2013</a>
				</li>
				<li class="14">
					<a href="batch_featured?year=2014" class="batch">BATCH 2014</a>
				</li>
				<li class="15">
					<a href="batch_featured?year=2015" class="batch">BATCH 2015</a>
				</li>
				<li class="16">
					<a href="batch_featured?year=2016" class="batch">BATCH 2016</a>
				</li>
				<li class="17">
					<a href="batch_featured?year=2017" class="batch">BATCH 2017</a>
				</li>
			</ul>
			</div><!--end of col1st-->
		</div><!--end of row-->
	</div><!-- end of container -->

</body>
<?php include('active.php'); ?>
<?php include ('footer.php'); ?>
</html>