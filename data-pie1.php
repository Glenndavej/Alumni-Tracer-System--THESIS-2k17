<?php
#Pie Chart
require 'sample-con.php';

$result = mysql_query("SELECT  `answer` , COUNT( * ) AS  'YES/NO' FROM  `tbltest` GROUP BY  `answer`");

$rows['type'] = 'pie';
$rows['name'] = 'Percentage';
while ($r = mysql_fetch_array($result)) {

    $rows['data'][] = array('Answer: '.$r['answer'].'', $r['YES/NO']);    
}


$rslt = array();

array_push($rslt,$rows);
print json_encode($rslt, JSON_NUMERIC_CHECK);

mysql_close($con);

