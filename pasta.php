
<?php
include 'functions.php';
?>

<html>
  
  <head>
<script type="text/javascript">
  function showUser(str) {
     //alert(str);
    if (str == "") {
        document.getElementById("").innerHTML = "";
        return;
    } else { 
        if (window.XMLHttpRequest) {
            // code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        } else {
            // code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange = function() {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                document.getElementById("cart_info").innerHTML = xmlhttp.responseText;
            }
        }
        xmlhttp.open("GET","new.php?q="+str,true);
        xmlhttp.send();
    }
}


     function comment_function()
                {
        
                  var comment = document.getElementById("area").value;
                  document.getElementById("area").value="";
                  var xmlhttp = new XMLHttpRequest();
                  xmlhttp.onreadystatechange = function() {
                    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                      document.getElementById("comment_show").innerHTML =xmlhttp.responseText +  document.getElementById("comment_show").innerHTML ; 
                      
                    }
                  }
                  xmlhttp.open("GET", "habijabi3.php?&text="+comment, true);
                  xmlhttp.send();
                }
      
     function delete_comment(clicked_id){
  
          var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
        document.getElementById("comment_show").innerHTML =xmlhttp.responseText;
                      
      }
    }
                  xmlhttp.open("GET","comment_delete.php?id_no="+clicked_id, true);
                  xmlhttp.send();
          }
  </script>



    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>pasta page </title>
    
    <link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="css/cart.css">
   
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

  <div id="templatemo_topsection">FOOD HUT</div>
  

  <div id="templatemo_headersection"><img src="images/templatemo_header_photo.jpg" class="reflect rheight20 ropacity25" alt="" width="806" height="166"  /></div>

  

  <div id="templatemo_content_section">

    <h1>WELCOME TO OUR RESTAURANT</h1>
    <?php
    if(!isset($_SESSION['user_id']))
    {
?>
   <h2 style="text-decoration:none;">You need to <a style="color:blue;" href="login.php">LOG IN</a> to order any product...........</h2>
<?php
}
?>
    <p>&nbsp;</p>
    <?php
    $sqlb = "SELECT * FROM `food_info` WHERE `food_category` = 'pasta'";
    $resultb=mysql_query($sqlb);
    while ($row=mysql_fetch_array($resultb)) {
           
   ?>

  <div class="product">
     <div class="product-content"><h1><?php echo $row['food_name'] ?></h1></div>

    <p class="product_price">BDT :<?php echo $row['food_price'] ?></p><br/>
  
    <?php
     if(isset($_SESSION['user_id'])) 

     {
      
        if(!is_admin($_SESSION['user_id'])){
     ?>
    <button class="cart_button" name="cart_name" onclick="showUser(this.value)" value="<?php echo $row['food_id']; ?>">order</button><br />
      <?php
       }
     }
     ?>
  <div class="product-thumb" style="margin-right:500px;" id="space"><img height="400" width="600" src="<?php echo $row['image_link'] ?>" />
    <br/>

    <?php
  }
    ?>
    </div>
  </div>
  
  
  <!--start of comment -->


 <?php
    $sql= " SELECT * FROM comments ";
    $res= mysql_query($sql);
?>

           
<div id="comment_show" >
 <?php
 if(isset($_SESSION['user_id'])){
 while ($rows=mysql_fetch_array($res)) {
 $user_id= $rows['user_id'];
  
  ?>
    <div class="back" style="height:auto;">
    <div class="user"><span class="u"><p style="color:aqua;"><B>Name:-  <?php echo username_from_user_id($user_id) ?></p></span> </div> 
    <div class="comm"><p>Comment:-   <?php echo $rows['comment']; ?></p></div>
  <hr style="margin-right:20px;"/>



  <?php
  if(is_admin($_SESSION['user_id'])){
     ?>
 
  <div id="delete_comment"><input type="button" value="delete" id="<?php echo $rows['comment_id']; ?>" onclick="delete_comment(this.id)";/>
    </div>
  <?php

}
  ?>
   <br>
  </div>
    <?php
    } 
  }
  ?>
 </div>
   <br><br>
   
 <?php
   if(isset($_SESSION['user_id'])){
    ?>  
  <textarea name="txt" placeholder="Comments goes here..." cols="50" rows="2"  style="border-radius:10px; border-color: blue " id="area"></textarea>
<br><br>  

      
  <input type="button" name="post" class="b" value="Post" style="border-radius:10px; border-color: blue " onclick="comment_function()" />

<?php
     }
    ?>
   

 <!-- end of comment -->

  <div id="templatemo_footer">Designed and Developed by  <span class="templatemo_footer">|&nbsp;Abir Hasan</span></div>
</div>
<?php
if(isset($_SESSION['user_id'])){
  ?>
<div class="cart" id="cart_info">
 <!--  echo '<h1 id=hh>'.'Old Ordered Items'.'</h1>'; -->
 <?php
  if(!is_admin($_SESSION['user_id'])){
    ?>
 <h1>Current Ordered Items</h1>
 <?php
}
?>
</div>
  

<div class="cart2" id="cart_info1"><br><br>

  <?php
  if(isset($_SESSION['user_id'])){
    
 $name_id=$_SESSION['user_id'];
 if(!is_admin($_SESSION['user_id'])){
echo '<h1 id=hh>'.'Our Service in your previous visit'.'</h1>';
}
$sqln="SELECT * FROM `order_table` WHERE `user_id` = '$name_id'";
$resultn=mysql_query($sqln);
    while ($row=mysql_fetch_array($resultn)) {
      echo '<hr/>';
      echo '<p style="padding-left:7px;">'.'Food Name: '.$row['food_name'].'</p>';
      echo '<p style="padding-left:7px;">'.'Food Price: '.$row['food_price'].'<br>'.'<hr/>';
      
    }
  }
  
?>
</div>

  <?php
}
?>
   
  
  </div>
   

</body>
</html>