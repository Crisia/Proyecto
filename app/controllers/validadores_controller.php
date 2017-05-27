<?php
  class ValidadoresController {
    public function lista() {
      $validadores = Validador::all();
      require_once('app/views/validadores/lista.php');
    }

    public function detalle() {
      if (!isset($_REQUEST['id']))
        return call('pages', 'error');

      // we use the given id to get the right user
      $validador = Validador::find($_REQUEST['id']);
      require_once('app/views/validador/detalle.php');
    }
  }