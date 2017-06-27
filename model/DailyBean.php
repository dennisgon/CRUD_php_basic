<?php 
	/**
	* 
	*/
	class DailyBean {
		private $table = "dailybean";

		public function getData($con) {
			$text = "SELECT * FROM $this->table A JOIN beans B ON A.bean_id = B.bean_id WHERE Sale_Price >= 0.00 LIMIT 1";
			$query = mysqli_query($con, $text);
			if(mysqli_num_rows($query) >= 1){
			    $result = array();
			    while($row = mysqli_fetch_assoc($query)){
			        $result[] = $row;
			    }
			}
			//$result = $text;
			return $result;
		}
	}

 ?>