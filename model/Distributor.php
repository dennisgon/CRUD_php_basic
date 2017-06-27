<?php  
	/**
	* 
	*/
	class Distributor {
		private $table = "distributor";
		public function view($con) {
			$text = "SELECT * FROM $this->table";
			$query = mysqli_query($con, $text);
			if (mysqli_num_rows($query)>=1) {
				$result = array();
				while ($row = mysqli_fetch_assoc($query)) {
					$result[] = $row;
				}
			}
			return $result;
		}

	}
?>