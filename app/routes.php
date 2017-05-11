<?php
function call($controller, $action) {
  require_once('app/controllers/' . $controller . '_controller.php');

  switch($controller) {
    case 'pages':
      $controller = new PagesController();
      break;
    case 'users':
      // we need the model to query the database later in the controller
      require_once('models/user.php');
      $controller = new UsersController();
      break;
    case 'families':
      // we need the model to query the database later in the controller
      require_once('models/family.php');
      $controller = new FamiliesController();
      break;
    case 'colectores':
      // we need the model to query the database later in the controller
      require_once('models/colector.php');
      $controller = new ColectoresController();
      break;
  }

  $controller->{ $action }();
}

// we're adding an entry for the new controller and its actions
$controllers = array('pages' => ['home', 'error'],
                     'users' => ['index', 'show'],
                     'families' => ['index', 'show'],
                     'colectores' => ['lista', 'detalle']
  );

if (array_key_exists($controller, $controllers)) {
  if (in_array($action, $controllers[$controller])) {
    call($controller, $action);
  } else {
    call('pages', 'error');
  }
} else {
  call('pages', 'error');
}