<?php

require_once 'app/Startup.php';

session_start();

$account = $_SESSION['account'];
if ($account){
  echo "logueado, nombre: " . $account->getName();
}
else {
  echo "no esta logueado";
}