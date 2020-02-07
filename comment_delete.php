<?php

include 'functions.php';
$comment_id=$_GET['id_no'];
$user_id= $_SESSION['user_id'];

$sql="DELETE FROM comments WHERE (comment_id='$comment_id')";
$result=mysql_query($sql) or die(mysql_error());

$s="SELECT * FROM comments "; 
    $r=mysql_query($s) or die(mysql_error());
    while ($rows=mysql_fetch_array($r)) {
    ?>
      <div class="back">
    <div class="user"><span class="u"><p style="color:blue"><B><?php echo username_from_user_id($user_id); ?></B></p></span> </div> 
    <div class="comm"><p><?php echo $rows['comment']; ?></p></div>
  
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
    <?php
    } 
    ?>
  
