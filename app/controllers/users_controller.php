<?php
  class UsersController {
    public function index() {
      // we store all the users in a variable
      $users = User::all();
      require_once('app/views/users/index.php');
    }

    public function show() {
      // we expect a url of form ?controller=users&action=show&id=x
      // without an id we just redirect to the error page as we need the user id to find it in the database
      if (!isset($_REQUEST['id']))
        return call('pages', 'error');

      // we use the given id to get the right user
      $user = User::find($_REQUEST['id']);
      require_once('app/views/users/show.php');
    }
  }