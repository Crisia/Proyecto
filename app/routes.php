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
    case 'validadores':
      // we need the model to query the database later in the controller
      require_once('models/validador.php');
      $controller = new ValidadoresController();
      break;

    case 'pending':
      require_once('models/pending.php');
      $controller = new PendingController();
      break;
  }

  $controller->{ $action }();
}

// we're adding an entry for the new controller and its actions
$controllers = array('pages' => array('home', 'error'),
                     'users' => array('index', 'show'),
                     'families' => array('index', 'show'),
                     'colectores' => array('lista', 'detalle'),
                     'validadores' => array('lista', 'detalle'),
                     'pending' => array('index', 'show')
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