<?php
session_start();
if(isset($_COOKIE["emni"])){
	$_SESSION["user_id"] = $_COOKIE["emni"];
	header('Location:index.php');
}
?>

<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

	<title>registration form page</title>
	<link rel="stylesheet" type="text/css" href="css/login.css">
	<script type="text/javascript">
function validate_email(field,alerttxt)
{
with (field)
  {
  apos=value.indexOf("@");
  dotpos=value.lastIndexOf(".");
  if (apos<1||dotpos-apos<2)
    {alert(alerttxt);return false;}
  else {return true;}
  }
}

function validate_form(thisform)
{
with (thisform)
  {
  if (validate_email(email,"Not a valid e-mail address!")==false)
    {
    	email.focus();
    	return false;
    }
  }
}
please insert numeric values only
</script>
</head>
	<body id="body-color">
		<div class="fix main">
			<div id="Sign-Up">
		
				<form action="register_process.php" method="post" onsubmit="return validate_form(this);" >
					
					<fieldset style="width:50%;margin:100px auto;border:3px solid;"><legend style="color:white,font-size:18px;font-weight:bold;">Registration Form </legend> <br/> </br>
						<table border="0">
							<tr>

								<tr><td>Username:</td><td><input type="text"  name="username" style="padding:10px 45px" pattern="[A-Za-z]*" title="please insert alphabets only" placeholder="alphabets only" required /></td></tr>

								<tr><td>Email:</td>	<td><input type="text"  name="email" placeholder="any@example.com"  style="padding:10px 45px"/></td></tr>

								<tr><td>password:</td><td><input type="password"  name="password" style="padding:10px 45px" required /></td></tr>

								<tr><td>contact Number:</td><td><input type="text"  name="contact" pattern="[0-9]*" title="please insert numeric values only" placeholder="numeric values " style="padding:10px 45px" required /></td></tr>

								<tr><td>Address:</td><td><input type="text"  name="address"  placeholder="Present address " style="padding:10px 45px" required /></td></tr>
								<tr><td>Gender:</td><td><input type="radio" name="gender" value="Male" required/> Male</td>
									<td><input type="radio" name="gender" value="Female" required /> Female<br/></td></tr>
								

								<tr>
									<td><input id="button" type="submit" name="submit" value="Sign-Up"/></td>
									<td><div class="back"><a href="index.php">Back</a></div></td>
								</tr>
							</tr>
		

						</table>
					</fieldset>
				</form>	
			</div>
		</div>

			

	</body>
</html>
