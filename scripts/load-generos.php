<?php

require_once ('../app/Startup.php');

$nombre = $_REQUEST["nombre"];
//$nombre = "Asteraceae";
$db = DB::getInstance();

$data = $db->getData("buscarFamilia_Genero('".$nombre."')");
$salida="";
$salida= "<option value=Genero>Genero</option>";
foreach($data as $d)
{
	$value = $d['Nombre'];
	$salida = $salida."<option value=\"$value\">$value</option>";
	
}
echo $salida;

?>