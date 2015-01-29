<?php

Class ContentQueries extends PDOhelper {

	protected $user_info = array("user_id" => 1);

	public function saveNewPageData($page) {

		$page[":user_id"] = $this->user_info["user_id"];

		$sql = "INSERT INTO pages (title,body,user_id) VALUES (:pageTitle,:pageText,:user_id)";
		$this->query($sql, $page);
		return true;



	}
}
