<?php
  class Family {
    // we define attributes
    public $id;
    public $name;

    public function __construct($id, $name) {
      $this->id      = $id;
      $this->name  = $name;
    }

    public static function all() {
      $list = [];
      $db = Db::getInstance();
      $families = $db->getData('getFamilias()');

      // we create a list of Post objects from the database results
      foreach($families as $family) {
        $list[] = new Family($family['Id'], $family['Nombre']);
      }

      return $list;
    }

    public static function find($id) {
      $db = Db::getInstance();
      // we make sure $id is an integer
      $id = intval($id);
      $family = $db->getData("familiaById('{id}')", array('id'=>$id), true);

      return new Family($family['Id'], $family['Nombre']);
    }
    public static function get_familiaGeneros($familia) {
      $list = [];
      $db = Db::getInstance();
      $familiaGeneros = $db->getData('buscarFamilia_Genero('."$Familia".')');

      // we create a list of Post objects from the database results
      foreach($familiaGeneros as $genero) {
        $list[] = new Family('Id', $genero['Nombre']);
      }

      return $list;
    }
  }