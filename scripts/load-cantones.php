<?php

require_once ('../app/Startup.php');

$nombre = $_REQUEST["nombre"];
//$nombre = "Cartago";
$db = DB::getInstance();
$data = $db->getData("cantones('".$nombre."')");
$salida="";
$salida="<option value=>Cantón</option>";
foreach($data as $d)
{
	$value = $d['nombre'];
	$salida=$salida."<option value=\"$value\">$value</option>";
}
echo ($salida);

?>