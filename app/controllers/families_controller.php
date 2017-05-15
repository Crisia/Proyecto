<?php
  class FamiliesController {    
    public function index() {
      // we store all the families in a variable
      $families = Family::all();
      require_once('app/views/families/index.php');
    }

    public function show() {
      // we expect a url of form ?controller=users&action=show&id=x
      // without an id we just redirect to the error page as we need the user id to find it in the database
      if (!isset($_REQUEST['id']))
        return call('pages', 'error');

      // we use the given id to get the right user
      $family = Family::find($_REQUEST['id']);
      require_once('app/views/families/index.php');
    }
    public function get_familiaGeneros($familia) {
      // we store all the families in a variable  
      $familiaGeneros = Family::get_familiaGeneros($familia);                  
      return "include('app/views/families/familias_generos.php')";
    }
  }