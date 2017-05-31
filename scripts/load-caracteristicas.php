<?php

require_once ('../app/Startup.php');


$db = DB::getInstance();
$data = $db->getData("fertilidad()");

foreach($data as $d)
{
  $value = $d['Nombre'];
  echo "<label><input type=checkbox id=\"$value\" value=\"$value\">$value</label><br>";
}

?>