<?php
ob_start();
session_start();
include 'db.php';

function username_from_user_id($id){
	$sql = "SELECT username FROM user WHERE user_id = '$id'";
	$res = mysql_query($sql);
	while ($row = mysql_fetch_array($res)) {
		return $row['username'];
	}
}

function is_admin($id){
	if(username_from_user_id($id) == 'admin') 
		return true;
	else
		return false;
}
?>