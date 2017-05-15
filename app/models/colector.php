<?php
  class Colector {

    public $id;
    public $name;
    public $active;

    public function __construct($id, $name, $active) {
      $this->id      = $id;
      $this->name    = $name;
      $this->active  = $active;
    }

    public static function all() {
      $list = [];
      $db = Db::getInstance();
      $colectores = $db->getData('colectores()');

      // we create a list of Post objects from the database results
      foreach($colectores as $colector) {
        $list[] = new Colector($colector['Id'], $colector['Nombre'], $colector['Enabled']);
      }

      return $list;
    }

    public static function find($id) {
      $db = Db::getInstance();
      // we make sure $id is an integer
      $id = intval($id);
      $colector = $db->getData("colectorById('{id}')", array('id'=>$id), true);

      return new Colector($colector['Id'], $colector['Nombre'], $colector['Enabled']);
    }

    public static function validate($id, $newName, $newStatus) {
      $db = Db::getInstance();
      // we make sure $id is an integer
      $id = intval($id);
      $params = array();
      $params['id'] = $id;
      $params['name'] = $newName;
      $params['status'] = $newStatus;

      $colector = $db->getData("colector_validate('{id}', '{name}', '{status}')", $params, true);

      return new Colector($colector['Id'], $colector['Nombre'], $colector['Enabled']);
    }
  }