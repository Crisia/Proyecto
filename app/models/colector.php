<?php
  class Colector {

    public $id;
    public $name;

    public function __construct($id, $name) {
      $this->id      = $id;
      $this->name  = $name;
    }

    public static function all() {
      $list = [];
      $db = Db::getInstance();
      $colectores = $db->getData('colectores()');

      // we create a list of Post objects from the database results
      foreach($colectores as $colector) {
        $list[] = new Colector($colector['Id'], $colector['Nombre']);
      }

      return $list;
    }

    public static function find($id) {
      $db = Db::getInstance();
      // we make sure $id is an integer
      $id = intval($id);
      $colector = $db->getData("colectorById('{id}')", array('id'=>$id), true);

      return new Colector($colector['Id'], $colector['Nombre']);
    }
  }