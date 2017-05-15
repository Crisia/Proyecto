<?php

require_once ('../app/Startup.php');

$nombre = $_REQUEST["nombre"];
//$nombre = "Cartago";
$db = DB::getInstance();
$data = $db->getData("cantones('".$nombre."')");

foreach($data as $d)
{
	$value = $d['nombre'];
	echo "<option value=\"$value\">$value</option>";
}

?>