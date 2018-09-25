<?php
$con = mysql_connect("localhost","root","louchin");

if (!$con) {
  die('Could not connect: ' . mysql_error());
}


mysql_select_db("alumni", $con);


?>