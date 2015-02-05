<?php

include_once("autoloader.php");

$cq = New ContentQueries("127.0.0.1","basket_db","root","mysql");


 echo(json_encode($cq->getMenuLinks()));