<?php

require_once ('../app/Startup.php');

$provincia = $_REQUEST["provincia"];
$canton = $_REQUEST["canton"];
$distrito = $_REQUEST["distrito"];
$familia = $_REQUEST["familia"];
$genero = $_REQUEST["genero"];
$especie = $_REQUEST["especie"];
$colector = $_REQUEST["colector"];
$validador = $_REQUEST["validador"];
$fecha = $_REQUEST["fecha"];
$nota = $_REQUEST["nota"];
$localidad = $_REQUEST["localidad"];
$latitud = $_REQUEST["latitud"];
$longitud = $_REQUEST["longitud"];
$altitud = $_REQUEST["altitud"];


/*$provincia = "San Jose";
$canton = "San Jose";
$distrito = "Carmen";
$familia = "Asteraceae";
$genero = "Cichorium";
$especie = "Endivia";
$colector = "Crisiaa Piedra Chaves";
$validador = "Yuliana Ulloa Porras";
$fecha = "1970-01-01 00:00:00";
$nota = "Nota";
$localidad = "localidad";
$latitud = "latitud";
$longitud = "longitud";
$altitud = "altitud";*/

//$nombre = "Cartago";
$db = DB::getInstance();
$data = $db->getData("ingresarMuestra('".$familia."','".$genero."','".$especie."','".$validador."','".$colector."','".$provincia."','".$canton."','".$distrito."','".$localidad."','".$latitud."','".$longitud."','".$altitud."','".$nota."','".$fecha."')");
$salida="";

foreach($data as $d)
{
	$value = $d['MuestraID'];
    $salida=$value;
}
echo ($salida);

?>




