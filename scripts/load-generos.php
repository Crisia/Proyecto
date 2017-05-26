<?php

require_once ('../app/Startup.php');

$nombre = $_REQUEST["nombre"];
//$nombre = "Cartago";
$db = DB::getInstance();

$data = $db->getData("buscarFamilia_Genero('".$nombre."')");

foreach($data as $d)
{
	$value = $d['Nombre'];
	echo "<option value=\"$value\">$value</option>";
}

?>