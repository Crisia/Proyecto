<?php

require_once ('../app/Startup.php');

$nombreF = $_REQUEST["nombreF"];
$nombreG = $_REQUEST["nombreG"];
echo($nombreF);
echo($nombreG);


$db = DB::getInstance();
$data = $db->getData("buscarFamilia_Genero_Especie('".$nombreF."','".$nombreG."')");

foreach($data as $d)
{
  $value = $d['Nombre'];
  echo "<option value=\"$value\">$value</option>";
}

?>