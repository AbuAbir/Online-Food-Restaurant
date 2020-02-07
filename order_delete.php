<?php
include 'functions.php';
$sql="DELETE FROM order_table";
mysql_query($sql);
header('Location:ordered_items.php');

?>