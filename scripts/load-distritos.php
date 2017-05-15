<?php

require_once ('../app/Startup.php');

$nombreP = $_REQUEST["nombreP"];
$nombreC = $_REQUEST["nombreC"];

$db = DB::getInstance();
$data = $db->getData("distritos('".$nombreP."','".$nombreC."')");

foreach($data as $d)
{
  $value = $d['nombre'];
  echo "<option value=\"$value\">$value</option>";
}

?>