<?php

require_once ('../app/Startup.php');

$countryCode = $_REQUEST["code"];

$db = DB::getInstance();
$states = $db->getStates($countryCode);

foreach($states as $state)
{
	$key = $state['Code'];
	$value = $state['Name'];
	echo "<option value=\"$key\">$value</option>";
}

?>