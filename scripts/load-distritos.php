<?php

require_once ('../app/Startup.php');

$nombreF = $_REQUEST["nombreF"];
$nombreG = $_REQUEST["nombreG"];
$db = DB::getInstance();
$data = $db->getData("distritos('".$nombreF."','".$nombreG."')");
$salida = "";
$salida= "<option value=>Distrito</option>";
foreach($data as $d)
{
  $value = $d['Nombre'];
  $salida= $salida."<option value=\"$value\">$value</option>";
}
echo ($salida);

?>