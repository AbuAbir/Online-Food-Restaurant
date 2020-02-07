<?php

include 'functions.php';

setcookie("emni","",time()-400);


$sql="DELETE FROM new_order_table";
mysql_query($sql);

session_destroy();


header('Location:index.php');

?>