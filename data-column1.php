<?php

#Basic Line
require 'sample-con.php';

// $id = $_GET['id'];
// $id2 = $_GET['id2'];


// $value='10';
// $value2='10';

$UR = mysql_query("SELECT COUNT(*) AS Total FROM `tbltest` WHERE impt_fctr LIKE 'University Ranking'");
$WE = mysql_query("SELECT COUNT(*) AS Total FROM `tbltest` WHERE impt_fctr LIKE 'Work Exp'");
$PC = mysql_query("SELECT COUNT(*) AS Total FROM `tbltest` WHERE impt_fctr LIKE 'Personal Connection'");
$OS = mysql_query("SELECT COUNT(*) AS Total FROM `tbltest` WHERE impt_fctr LIKE 'Occupational Skills'");
$LS = mysql_query("SELECT COUNT(*) AS Total FROM `tbltest` WHERE impt_fctr LIKE 'Language Skills'");
$IT = mysql_query("SELECT COUNT(*) AS Total FROM `tbltest` WHERE impt_fctr LIKE 'IT Skills'");

$UR = mysql_fetch_array($UR);
$WE = mysql_fetch_array($WE);
$PC = mysql_fetch_array($PC);
$OS = mysql_fetch_array($OS);
$LS = mysql_fetch_array($LS);
$IT = mysql_fetch_array($IT);

if (empty($UR['Total'])) { $UR = '0'; } else { $UR = $UR['Total'];}
if (empty($WE['Total'])) { $WE = '0'; } else { $WE = $WE['Total'];}
if (empty($PC['Total'])) { $PC = '0'; } else { $PC = $PC['Total'];}
if (empty($OS['Total'])) { $OS = '0'; } else { $OS = $OS['Total'];}
if (empty($LS['Total'])) { $LS = '0'; } else { $LS = $LS['Total'];}
if (empty($IT['Total'])) { $IT = '0'; } else { $IT = $IT['Total'];}



/*Tooltip Label*/
$xAxis['name'] = 'Month';
$Data['name'] = 'Important';
/*xAxis or Label*/
$xAxis['data'][] = 'University Ranking';
$xAxis['data'][] = 'Work Exp';
$xAxis['data'][] = 'Personal Connection';
$xAxis['data'][] = 'Occupational Skills';
$xAxis['data'][] = 'Language Skills';
$xAxis['data'][] = 'IT Skills';

/*xAxis Datas*/
$Data['data'][] = $UR;
$Data['data'][] = $WE;
$Data['data'][] = $PC;
$Data['data'][] = $OS;
$Data['data'][] = $LS;
$Data['data'][] = $IT;


$rslt = array();
array_push($rslt, $xAxis);
array_push($rslt, $Data);
print json_encode($rslt, JSON_NUMERIC_CHECK);

mysql_close($con);

