<?php  
	require_once("model/Connection.php");
	$obj_connect = new Connection();

	require_once("model/Distributor.php");
	$obj_distributor = new Distributor();

	if (!isset($_GET['action'])) {
		$con = $obj_connect->up();
		$datas = $obj_distributor->view($con);
		$obj_connect->down();
	}
?>