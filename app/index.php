<?php

require_once 'app/Startup.php';

if (isset($_GET['controller']) && isset($_GET['action'])) {
  $controller = $_GET['controller'];
  $action     = $_GET['action'];
} else {
  $controller = 'pages';
  $action     = 'home';
}

require_once 'app/views/layout.php';
?>