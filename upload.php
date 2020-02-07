<?php
include 'functions.php';

if(!is_admin($_SESSION['user_id'])){
	header('Location:index.php');
	die();
}
?>

<html>
  
  <head>


    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>online restaurant upload page </title>
    
    <link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
    <link href="css/login.css" rel="stylesheet" type="text/css" />
   

  </head>

  <body>

    <div id="templatemo_container">

      <div class="navbar">

        <ul>
          <li><a href="index.php" class="current">MAIN PAGE</a></li>
          <li><a href="about.php">ABOUT US</a></li>
          <li><a href="#">MENUS</a>
        <ul>
          <li><a href="pizza.php">Pizza</a></li>
          <li><a href="burger.php">Burger</a></li>
          <li><a href="pasta.php">Pasta</a></li>
          


        </ul>
          </li>
      
          <li><a href="drinks.php">DRINKS</a></li>
          <?php
          if(isset($_SESSION['user_id'])){
          
          echo '<li><a href="logout.php">SIGN OUT</a></li>';
          }else{

          echo '<li><a href="login.php">SIGN IN</a></li>';

}
?>
         
          
<?php 
  if(isset($_SESSION['user_id'])) {
        ?>
          <li><a href="">ACCOUNT</a>
           <ul>
          <li><a href="">hi, <?php echo username_from_user_id($_SESSION['user_id']); ?></a></li>
        
          <?php

          if(is_admin($_SESSION['user_id'])){
            echo '<li><a href="upload.php">Add items</a></li>';
             echo '<li><a href="ordered_items.php">Ordered items</a></li>';
          }
          ?>
          
          
        </ul>
    </li>
    <?php
      }
      else{
       echo '<li><a href="register.php">SIGN UP</a></li>';
      }
  ?>
    </ul>
    </div>



<?php 
	
if  (!isset($_POST['submit']))  
{ 
?>

<form enctype="multipart/form-data" action="<?php echo $_SERVER['PHP_SELF']?>" method="post">

<table border="0" style="margin-left:px;padding:200px;">
							<tr>

								<tr><td style="color:white">Food Name:</td><td><input type="text"  name="foodname" style="padding:10px 45px" required /></td></tr>
								<tr><td><select name="category" style="color:blue">
								 <option disabled selected>Select Category</option>
								 <option value="pizza" name="pizza">pizza</option>
								 <option value="burger" name="burger">burger</option>
								 
								 <option value="pasta" name="pasta">pasta</option>
								 <option value="drinks" name="drinks">drinks</option>
								</select></td></tr>

								<!--<tr><td><img src="images/drinks2.jpg" height="300px" width="300px"></td>	</tr> -->
								
								<tr><td style="color:white">price:</td>	<td><input type="text"  name="foodprice" style="padding:10px 45px"required/></td></tr>
								<!--<tr><td>upload an image:</td><td><input type="file" name="image_file" value="8000000"  style="padding:10px 45px"/></td></tr> -->
								<tr><td style="color:white">Select image to upload:</td><td><input type="file" name="data"></td></tr>
    									
								
								

								<tr>
									<td><input id="button" type="submit" name="submit" style="color:white" value="Add to Database"/></td>
									
								</tr>
							</tr>
		

						</table>
						</form>

<?php

} 



else
{

$name = $_POST['foodname'];
$price = $_POST['foodprice'];
$cat = $_POST['category'];
header('Location:index.php');
echo "file inserted succesfuuly";

if  ($_FILES['data']['size']  ==  0)
{

die("ERROR:  Zero  byte  file  upload");

}



$allowedFileTypes  =  array("image/gif",  "image/jpeg",  "image/pjpeg", "mage/png");

if  (!in_array($_FILES['data']['type'],  $allowedFileTypes)) 
{

die("ERROR:  File  type  not  permitted");

} 

if  (!is_uploaded_file($_FILES['data']['tmp_name']))
{

die("ERROR:  Not  a  valid  file  upload"); 

}
$uploadDir  =  "./uploads/"; //  copy  the  uploaded  file  to  the  directory
move_uploaded_file($_FILES['data']['tmp_name'],  $uploadDir  .  $_FILES['data']['name'])  or  die("Cannot  copy  uploaded  file"); //  display  success  message
$image_link = "http://10.10.3.156/1207025/uploads/".$_FILES["data"]["name"];

//echo  "File  successfully  uploaded  to  "  .  $uploadDir  .$_FILES['data']['name']; 
$sql= "INSERT INTO `food_info` VALUES('','$name','$cat','$price','$image_link') ";
mysql_query($sql);


}
?>
