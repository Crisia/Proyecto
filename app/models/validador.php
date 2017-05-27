<?php
  class Validador {

    public $id;
    public $name;
    public $active;

    public function __construct($id, $name, $active) {
      $this->id      = $id;
      $this->name    = $name;
      $this->active  = $active;
    }

    public static function all() {
      $list = array();
      $db = Db::getInstance();
      $validadores = $db->getData('validadores()');

      // we create a list of Post objects from the database results
      foreach($validadores as $validador) {
        $list[] = new Validador($validador['Id'], $validador['Nombre'], $validador['Enabled']);
      }

      return $list;
    }

    public static function find($id) {
      $db = Db::getInstance();
      // we make sure $id is an integer
      $id = intval($id);
      $validador = $db->getData("validadorById('{id}')", array('id'=>$id), true);

      return new Validador($validador['Id'], $validador['Nombre'], $validador['Enabled']);
    }

    public static function validate($id, $newName, $newStatus) {
      $db = Db::getInstance();
      // we make sure $id is an integer
      $id = intval($id);
      $params = array();
      $params['id'] = $id;
      $params['name'] = $newName;
      $params['status'] = $newStatus;

      $validador = $db->getData("validador_validate('{id}', '{name}', '{status}')", $params, true);

      return new Validador($validador['Id'], $validador['Nombre'], $validador['Enabled']);
    }
  }