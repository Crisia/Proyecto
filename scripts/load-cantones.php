<?php

require_once ('../app/Startup.php');

$id = $_REQUEST["id"];

$db = DB::getInstance();
$data = $db->getData("cantones('{id}')",array('id'=>$id));

foreach($data as $d)
{
	$key = $d['Id'];
	$value = $d['Nombre'];
	echo "<option value=\"$key\">$value</option>";
}

?>