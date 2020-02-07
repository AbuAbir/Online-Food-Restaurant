<?php
include 'functions.php';
?>

<html>
  
  <head>


    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>online restaurant main page </title>
    
    <link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
    
   
    <link rel="stylesheet" type="text/css" href="themes/bar/bar.css"/>
    <link rel="stylesheet" type="text/css" href="themes/dark/dark.css"/>
    <link rel="stylesheet" type="text/css" href="themes/default/default.css"/>
    <link rel="stylesheet" type="text/css" href="themes/light/light.css"/>
    <link rel="stylesheet" type="text/css" href="themes/nivo-slider.css"/>
  
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/reflection.js"></script>




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
          
          <!-- <li><a href="logout.php">Logout</a></li> -->
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