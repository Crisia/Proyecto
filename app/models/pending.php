<?php
  class Pending {
    // we define 3 attributes
    public $id;
    public $family;
    public $genre;
    public $species;
    public $familyId;
    public $genreId;
    public $speciesId;
    public $collector;
    public $validator;
    public $address;

    public function __construct($id, $family, $genre, $species, $familyId, $genreId, $speciesId, $collector, $validator, $address, $collectDate) {
      $this->id      = $id;
      $this->family = $family;
      $this->genre = $genre;
      $this->species = $species;
      $this->familyId = $familyId;
      $this->genreId = $genreId;
      $this->speciesId = $speciesId;
      $this->collector = $collector;
      $this->validator = $validator;
      $this->address = $address;
      $this->collectDate = $collectDate;
    }

    public static function all() {
      $list = [];
      $db = Db::getInstance();
      $pending = $db->getData('pending()');

      // we create a list of Post objects from the database results
      foreach($pending as $p) {
        $list[] = new Pending($p['Id'], $p['Familia'], $p['Genero'], $p['Especie'], $p['IdFamilia'], $p['IdGenero'], $p['IdEspecie'], $p['Colector'], $p['Validador'], $p['Direccion'], $p['FechaColecto']);
      }

      return $list;
    }

    public static function find($id) {
      $db = Db::getInstance();
      // we make sure $id is an integer
      $id = intval($id);
      $p = $db->getData("pendingById('{id}')", array('id'=>$id), true);

      return new Pending($p['Id'], $p['Familia'], $p['Genero'], $p['Especie'], $p['IdFamilia'], $p['IdGenero'], $p['IdEspecie'], $p['Colector'], $p['Validador'], $p['Direccion'], $p['FechaColecto']);
    }
  }