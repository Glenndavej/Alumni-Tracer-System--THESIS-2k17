<?php 
if (isset($_POST['submit'])) {
$display = $_POST['year'];
$display1 = $_POST['deprtmnt'];
$display2 = $_POST['kurs'];
$name = $_POST['search_alumni'];

echo 'Current Selection: ' . '<b>' . $name . ', ' . $display . ', '. $display1 . ', ' . $display2 . '</b>';
}
 ?>