<?php
  class User {

    public $id;
    public $user;
    public $pass;
    public $name;
    public $role;

    public function __construct($id, $user, $pass, $name, $role) {
      $this->id      = $id;
      $this->user    = $user;
      $this->pass    = $pass;
      $this->name    = $name;
      $this->role    = $role;
    }

    public static function all() {
      $list = [];
      $db = Db::getInstance();
      $users = $db->getData('usuarios()');

      // we create a list of Post objects from the database results
      foreach($users as $user) {
        $list[] = new User($user['Id'], $user['Usuario'], $user['Clave'], $user['Nombre'], $user['Rol']);
      }

      return $list;
    }

    public static function find($id) {
      $db = Db::getInstance();
      // we make sure $id is an integer
      $id = intval($id);
      $user = $db->getData("usuarioById('{id}')", array('id'=>$id), true);

      return new User($user['Id'], $user['Usuario'], $user['Clave'], $user['Nombre'], $user['Rol']);
    }

    public static function validate($id, $newUser, $newPassword, $newName, $newRole) {
      $db = Db::getInstance();
      // we make sure $id is an integer
      $id = intval($id);
      $params = array();
      $params['id'] = $id;
      $params['user'] = $newUser;
      $params['pass'] = $newPassword;
      $params['name'] = $newName;
      $params['role'] = $newRole;

      $user = $db->getData("user_validate('{id}', '{user}', '{pass}', '{name}', '{role}')", $params, true);

      return new User($user['Id'], $user['Usuario'], $user['Clave'], $user['Nombre'], $user['Rol']);
    }
  }