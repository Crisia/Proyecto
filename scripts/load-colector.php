<?php

require_once ('../app/Startup.php');

//$nombre = $_REQUEST["nombre"];
//$nombre = "Asteraceae";
$db = DB::getInstance();

$data = $db->getData("obtenerColector()");
$salida="";
$salida= "<option value=>Colector</option>";
foreach($data as $d)
{
	$value = $d['Nombre'];
	$salida = $salida."<option value=\"$value\">$value</option>";
	
}
echo $salida;

?>