<?php

require_once ('../app/Startup.php');

session_start();
$data = $_SESSION['provincias'];

if(!$data)
{
  $db = DB::getInstance();
  $data = $db->getData("provincias()");
  $_SESSION['provincias'] = $data;
}

foreach($data as $d)
{
	$key = $d['Id'];
	$value = $d['Nombre'];
	echo "<option value=\"$key\">$value</option>";
}
?>