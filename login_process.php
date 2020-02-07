<?php

ob_start();
session_start();
?>
<!DOCTYPE html>
<html>
<head>
	<title>login-process</title>
</head>
<body>

<?php

	include 'db.php';
	$username = $_POST['username'];
	$pass = $_POST['password'];

	$sql = "SELECT user_id FROM user WHERE username='$username' AND password='$pass'";
	$result = mysql_query($sql);
	while ($row = mysql_fetch_array($result)) {
		if($row['user_id']){
			$_SESSION['user_id'] = $row['user_id'];
			if(isset($_POST['checkbox'])){
			setcookie("emni",$_SESSION['user_id'],time()+400);
		}
			header('Location:index.php');
			die();
		}
	}
	
	header('Location:login.php?login_error=yes');
	?>
	
</body>
</html>



?>