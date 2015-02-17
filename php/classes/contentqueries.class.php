<?php

Class ContentQueries extends PDOhelper {

	protected $user_info = array("user_id" => 1);

	public function saveNewPageData($page) {

		

		$page[":user_id"] = $this->user_info["user_id"];

		$menu_data = false;
		if ($page["menudata"]) {
			$menu_data = $page["menudata"];
	    unset($page["menudata"]);
		}
    
    //$page_url = $page[":pageUrl"];
    //unset($page[":pageUrl"]);

    


		$sql = "INSERT INTO pages (title,body,user_id) VALUES (:pageTitle,:pageText,:user_id)";
		$this->query($sql, $page);

		




		//then save link
		if ($menu_data) {
			$this->saveNewMenuLink($menu_data);
		}

		return true;



	}

	public function getMenuLinks(){
		$sql1 = "SELECT * FROM menu_links ORDER BY weight";
    return $this->query($sql1);
    

	}

	public function saveNewMenuLink($menulink){
		$menulink[":plid"] = $menulink[":plid"] ? $menulink[":plid"] : null;

		$sql2 = "SELECT pid FROM pages ORDER BY created DESC LIMIT 1";
    $new_pid = $this->query($sql2);
   
    $new_pid = $new_pid[0]["pid"];
    $menulink[":menu_path"] = $new_pid;
    
		$sql1 = "INSERT INTO menu_links (title, weight, path, plid) VALUES (:menu_title,:menu_level, :menu_path,:plid)";

    return $this->query($sql1, $menulink);
    

	}
	public function getPageContent($pid){
		$sql2 = "SELECT * FROM pages WHERE pid = :pid";
    $page_data = array(":pid" => $pid);
    $page_data = $this->query($sql2, $page_data);
    return $page_data;
	}

}
