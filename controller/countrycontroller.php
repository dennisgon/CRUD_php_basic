<?php  
	require_once("model/Connection.php");
	$obj_connect = new Connection();

	require_once("model/Country.php");
	$obj_country = new Country();

	$con = $obj_connect->up();
	$datas = $obj_country->view($con);
	$obj_connect->down();
?>