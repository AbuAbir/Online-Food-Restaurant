
<?php
include 'functions.php';
?>

<html>
  
  <head>


    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>online restaurant about page</title>
    
    <link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
    

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/reflection.js"></script>
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script type="text/javascript">

var myCenter=new google.maps.LatLng(22.8973412, 89.48837779999997);

function initialize()
{
var mapProp = {
  center:myCenter,
  zoom:16,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };

var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);

var marker=new google.maps.Marker({
  position:myCenter,
  });

marker.setMap(map);
}

google.maps.event.addDomListener(window, 'load', initialize);

</script>

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




  <div id="templatemo_topsection">FOOD HUT</div>

  <div id="templatemo_headersection"><img src="images/templatemo_header_photo.jpg" class="reflect rheight20 ropacity25" alt="" width="806" height="166"  /></div>

  
  <div id="templatemo_topsection">Details</div>
  <div id="templatemo_content_section">

   <p><strong>FOOD HUT</strong> Restaurant is a specialized restaurant KUET road of khulna. From all around Khulna city food lovers can come to the restaurant very quickly.</p>

<p><p><strong>FOOD HUT</strong> restaurant is specialized in Fast food,Chinese and Kabab dishes. We have brought the best chef’s by best choice to serve you the best quality. Our restaurant interior is made international standard so that you feel happy when you will come with your loved ones. The outside view is also beautiful as the restaurant is situated on the sixth floor.</p>

<p>There is also a party floor on the roof where we can accomodate 50 person at a time. It is a perfect place to do birthday, anniversary, meetings and other small ocassions.
So we welcome you and your family to come and dine once in <strong>FOOD HUT</strong> Restaurant.</p>

<br>
<h1>LOCATION:</h1>

<div id="googleMap" style="width:670px;height:380px;margin-left:30px;">

</div>


   

  </div>
  <div id="templatemo_footer">Designed and Developed by  <span class="templatemo_footer">|&nbsp;Abir Hasan</span></div>
</div>
</body>
</html>