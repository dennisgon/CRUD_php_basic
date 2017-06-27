<?php 
	session_start();
	if($title != "login"){
	 	if (!isset($_SESSION['username'])) {
	 		header('location: login.php');
	 	}
	}
	 	

	
?>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title><?=$title ?></title>
<link rel="stylesheet" type="text/css" href="style/style.css">
</head>

<body>

<table width="800" border="0">
  <tr>
    <td colspan="6"><img src="asset/coffeevalleylogo.gif" width="294" height="118" /></td>
  </tr>