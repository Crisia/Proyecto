<?php

require_once ('../app/Startup.php');


$db = DB::getInstance();
$data = $db->getData("buscarFamilia()");
$salida="";
$salida="<option value=>Familia</option>";
foreach($data as $d)
{
	$value = $d['Nombre'];
	$salida=$salida."<option value=\"$value\">$value</option>";
}
echo ($salida);
?>