<?php 
ini_set('display_errors',1);
error_reporting(E_ALL);
	class Beans{ 
		private $table = "beans";
		public function select_data($con){
		    $user_id = $_SESSION['id'];
		    $text = "SELECT FROM $this->table ";
		    $query = mysqli_query($con, $text);
		    $result =  mysqli_insert_id($con);
		    printf("Error: %s\n", mysqli_error($con));

		    return $result;
		}
	}
?>