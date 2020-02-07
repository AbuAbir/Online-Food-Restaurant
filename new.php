
<?php

include 'functions.php';
if(isset($_SESSION['user_id']))
$name_id=$_SESSION['user_id'];



$q = intval($_GET['q']);


$sql2="SELECT * FROM `food_info`  WHERE food_id = '".$q."'";
$result1 = mysql_query($sql2);


if($result1 === FALSE) { 
    die(mysql_error()); // TODO: better error handling
}
if (mysql_num_rows($result1) > 0) {
while($row = mysql_fetch_assoc($result1)) {
   
    $food_name=$row['food_name'] ;
   
    $food_price=$row['food_price'];
    
   }
   
}

$sqlinfo = " SELECT * FROM user WHERE user_id = '$name_id'" ;
$resultinfo = mysql_query($sqlinfo);
while($row = mysql_fetch_array($resultinfo))
{
    $address=$row['address'];
    $contact=$row['contact'];
}

$sql1="INSERT INTO `order_table`(`user_id`, `food_id`, `food_name`, `food_price`,`address`,`contact`) VALUES ('$name_id','$q','$food_name','$food_price','$address','$contact')";
mysql_query($sql1);

$sqlw="INSERT INTO `new_order_table`(`user_id`, `food_id`, `food_name`, `food_price`) VALUES ('$name_id','$q','$food_name','$food_price')";
mysql_query($sqlw);

echo '<h1 id=hh>'.'Currnt Ordered Items'.'</h1>';
 $sqli="SELECT * FROM `new_order_table` WHERE user_id = '$name_id'";
 $resulti = mysql_query($sqli);

 while($row = mysql_fetch_assoc($resulti)) {
echo '<hr/>';
 $food_name=$row['food_name'];
      echo '<p style="padding-left:7px;">'.'Food Name: '.$row['food_name'].'</p>';
       $food_price=$row['food_price'];
      echo '<p style="padding-left:7px;">'.'Food Price: '.$row['food_price'].'<br>'.'<hr/>';
    
}


?>
