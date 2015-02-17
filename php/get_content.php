<?php

include_once("autoloader.php");

$cq = New ContentQueries("127.0.0.1","basket_db","root","mysql");

if(isset($_REQUEST["pid"])) {
	echo(json_encode($cq->getPageContent($_REQUEST["pid"])));
}