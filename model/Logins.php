<?php 
ini_set('display_errors',1);
error_reporting(E_ALL);
	class Logins{ 
		private $table = "logins";
		//untuk view
		public function login($username, $password, $con){
			$result = 0;
			$text = "SELECT * FROM $this->table WHERE login = '$username' AND password = '$password'";
			$query = mysqli_query($con, $text);

			if(mysqli_num_rows($query) == 1){

			    $row = mysqli_fetch_array($query,MYSQL_ASSOC);

			    $_SESSION['username'] = $username;

			    $result = 1;

			}else{
				$result = 0;
			}
			return $result;

		}
	}
?>