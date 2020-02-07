 <?php
 
 include 'functions.php';
 $status = $_GET['text'];

 $user_id= $_SESSION['user_id'];


 comment_update($status, $user_id);

 function comment_update($status, $user_id)
 {
 $sql = "INSERT INTO comments(user_id,comment) VALUES('$user_id','$status')";
 mysql_query($sql);
 }
 ?>
 
      <div class="back">
    <div class="user"><span class="u"><p style="color:blue"><B><?php echo username_from_user_id($user_id); ?></B></p></span> </div> 
    <div class="comm"><p><?php echo $status; ?></p></div>
	
	<hr/>
	
	  <?php
 
  if(is_admin($user_id)){
    ?>
  
  <div id="delete_comment"><input type="button" value="delete" id="<?php echo $rows['comment_id']; ?>" onclick="delete_comment(this.id)">
    </div>
  <?php
}

  ?>
  
   <br>
  </div>
   