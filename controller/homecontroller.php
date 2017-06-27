<?php 
	require_once("model/Connection.php");
	$obj_connect = new Connection();

	require_once("model/DailyBean.php");
	$obj_daily_bean = new DailyBean();

	if (!isset($_GET['action'])) {
		# code...
		$con = $obj_connect->up();
		$datas = $obj_daily_bean->getData($con);
		$obj_connect->down();
	}


?>