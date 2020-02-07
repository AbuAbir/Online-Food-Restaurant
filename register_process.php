<?php
ob_start();
	include 'db.php';
	$username = $_POST['username'];
	$email = $_POST['email'];
	$pass = $_POST['password'];
	
	$contact =$_POST['contact'];
	$address =$_POST['address'];
	$gender = $_POST['gender'];

	$sql = "INSERT INTO user(username,email,password,contact,address,gender) VALUES('$username','$email','$pass','$contact','$address','$gender')";
	mysql_query($sql);
	header('Location:login.php');


?>