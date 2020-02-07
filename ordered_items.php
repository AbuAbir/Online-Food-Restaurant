<?php
include 'functions.php';
?>


<!DOCTYPE html>
<html >
<head>
<title>admin page to see all the orders</title>
<style>

.navbar	{
	height: 40px;
  padding-left: 235px;
  z-index: 9999;
	margin: 0;
	top:20px;
	position: absolute; /* Ensures that the menu doesn’t affect other elements */
	
	}
.navbar li 	{
	height: auto;
	width: 100px;  /* Each menu item is 150px wide */
	float: left;  /* This lines up the menu items horizontally */
	text-align: center;  /* All text is placed in the center of the box */
	list-style: none;  /* Removes the default styling (bullets) for the list */
	font: normal bold 12px/1.2em Arial, Verdana, Helvetica;  
	padding: 0;
	margin: 0;
	background-color:#560410;
	border-right:1.5px solid #1E0606;	
	border-left:1.5px solid #1E0606;		
 }
.navbar a	{							
	padding: 10px ;  /* Adds a padding on the top and bottom so the text appears centered vertically */
	border-left: 1px solid #560410; 
	border-right: 1px solid #560410; 
	text-decoration: none;  /* Removes the default hyperlink styling. */
	color: white; 
	display: block;
	}
.navbar li:hover, a:hover {background:url(/images/templatemo_button_hover.jpg) no-repeat;} 
.navbar li ul 	{
		display: none;  /* Hides the drop-down menu */
		height: auto;									
		margin: 0; /* Aligns drop-down box underneath the menu item */
		padding: 0; /* Aligns drop-down box underneath the menu item */			
		}				

.navbar li:hover ul {
        display: block; /* Displays the drop-down box when the menu item is hovered over */
  }
.navbar li ul li {background-color: #560410;} 
	
.navbar li ul li a:hover{background-color: #366b82;background: url(/images/templatemo_button_hover.jpg) no-repeat;
}




#customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    width: 100%;
    border-collapse: collapse;
    margin-top: 190px;
}

#customers td, #customers th {
    font-size: 1em;
    border: 1px solid #98bf21;
    padding: 3px 7px 2px 7px;
}

#customers th {
    font-size: 1.1em;
    text-align: left;
    padding-top: 5px;
    padding-bottom: 4px;
    background-color: #A7C942;
    color: #ffffff;
}

#customers tr.alt td {
    color: #000000;
    background-color: #EAF2D3;


}

</style>
</head>
<body class="bb" background="">

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
echo '<table id="customers">';
  echo '<tr><th>Orderer name</th>
    <th>Food Name</th>
    <th>Food Price</th>
    <th>Address of recipent</th>
    <th>Contact number</th>
  </tr>';
$res = mysql_query("SELECT * FROM order_table");
	while($row = mysql_fetch_array($res)){

  echo '<tr>'.
    
    '<td>'.username_from_user_id($row['user_id']).'</td>'.
    '<td>'.$row['food_name'].'</td>'.
    '<td>'.$row['food_price'].'</td>'.
    '<td>'.$row['address'].'</td>'.
    '<td>'.$row['contact'].'</td>'
  .'</tr>';


}
echo '</table>';

?>
<form action="order_delete.php" >

<input type="submit" style="margin-top:30px;background-color:#A7C942;color:white;border-radius:10px;" value="OK,the orders are delivered to respective person's"/>
</form>
</body>
</html>
