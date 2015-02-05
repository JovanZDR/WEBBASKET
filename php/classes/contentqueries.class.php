<?php

Class ContentQueries extends PDOhelper {

	protected $user_info = array("user_id" => 1);

	public function saveNewPageData($page) {

		

		$page[":user_id"] = $this->user_info["user_id"];

		$page_manu_title = $page[":menuTitle"];
    unset($page[":menuTitle"]);
    
    $page_manu_level = $page[":menuLevel"];
    unset($page[":menuLevel"]);

		$sql = "INSERT INTO pages (title,body,user_id) VALUES (:pageTitle,:pageText,:user_id)";
		$this->query($sql, $page);
		return true;



	}

	public function getMenuLinks(){
		$sql1 = "SELECT * FROM menu_links";
    return $this->query($sql1);
    

	}

}
