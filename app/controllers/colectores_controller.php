<?php
  class ColectoresController {
    public function lista() {
      $colectores = Colector::all();
      require_once('app/views/colectores/lista.php');
    }

    public function detalle() {
      if (!isset($_REQUEST['id']))
        return call('pages', 'error');

      // we use the given id to get the right user
      $colector = Colector::find($_REQUEST['id']);
      require_once('app/views/colectores/detalle.php');
    }
  }