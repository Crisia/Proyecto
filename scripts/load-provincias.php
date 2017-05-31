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
$salida="<option value=>Provincia</option>";

foreach($data as $d)
{
	$value = $d['Nombre'];
	$salida = $salida."<option value=\"$value\">$value</option>";
}
echo ($salida);
?>