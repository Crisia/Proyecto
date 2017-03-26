<?php

require_once ('../app/Startup.php');

session_start();
$countries = $_SESSION['countries'];

if(!$countries)
{
  $db = DB::getInstance();
  $countries = $db->getCountries();
  $_SESSION['countries'] = $countries;
}

foreach($countries as $country)
{
	$key = $country['Code'];
	$value = $country['Name'];
	echo "<option value=\"$key\">$value</option>";
}
?>