<?php
  class User {
    // we define 3 attributes
    public $id;
    public $name;
    public $account;

    public function __construct($id, $name, $account) {
      $this->id      = $id;
      $this->name  = $name;
      $this->account = $account;
    }

    public static function all() {
      $list = [];
      $db = Db::getInstance();
      $users = $db->getData('usuarios()');

      // we create a list of Post objects from the database results
      foreach($users as $user) {
        $list[] = new User($user['Id'], $user['Nombre'], $user['Usuario']);
      }

      return $list;
    }

    public static function find($id) {
      $db = Db::getInstance();
      // we make sure $id is an integer
      $id = intval($id);
      $user = $db->getData("usuarioById('{id}')", array('id'=>$id), true);

      return new User($user['Id'], $user['Nombre'], $user['Usuario']);
    }
  }