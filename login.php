<?php
session_start();
if(isset($_SESSION["user_id"]))
{
	session_destroy();
	header('Location:login.php');
	
}
if(isset($_COOKIE["emni"])){
	$_SESSION["user_id"] = $_COOKIE["emni"];
	header('Location:index.php');
}
?>
<html>
	<head>
	<title>login page</title>
	<link rel="stylesheet" type="text/css" href="css/login.css">
	</head>


	<body id="body-color">
		<div class="fix main">
			<div id="Sign-Up">

				<form action="login_process.php" method="post">
					<fieldset style="width:50%;margin:100px auto;border:3px solid;"><legend style="color:white,font-size:18px;font-weight:bold;">Please Enter your username and password </legend> <br/>
																																																	

<?php
	if(isset($_GET['login_error']) && $_GET['login_error'] == 'yes'){

?>
	<p style="color:red"><strong>"Your Username and Password didn't match,Please try again !" </strong></p>
<?php
	}
?>

				<table border="0">
					<tr>
					<tr><td>Username:</td><td><input type="text"  name="username" style="padding:10px 45px" required /></td></tr>
					<tr><td>password:</td><td><input type="password"  name="password" style="padding:10px 45px" required /></td></tr>
					<br/>
					<br/>
					<tr><td><input type="checkbox" name="checkbox" style="padding:10px 45px" />Remember me</td></tr>
					<tr>
					<td><input id="button" type="submit" value="Log in"  /></td>
					<td><div class="back"><a href="register.php">Register</a></div></td></tr>
					</tr>
				</table>
					</fieldset>
				</form>
			</div>
		</div>

	</body>
</html>

