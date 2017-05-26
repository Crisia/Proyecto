<?php

require_once ('../app/Startup.php');


$db = DB::getInstance();
$data = $db->getData("buscarFamilia()");

foreach($data as $d)
{
  $value = $d['Nombre'];
  echo "<option value=\"$value\">$value</option>";
}

?>