<?php

require_once 'config.php';
require_once 'Db.php';

class WSRequest
{
  private $params;
  function __construct($request)
  {
    $this->params = $request;
  }

  public function getParam($key, $default = null)
  {
    $v = $this->params[$key];
    return (!$v ? $default : $v);
  }

  public function requireNotNullOrEmpty($key)
  {
    $v = $this->getParam($key);
    if (!$v || empty($v))
    {
      throw new Exception("invalid param");
    }
    return $v;
  }

  public function requireNumericAndPositive($key)
  {
    $v = $this->getParam($key);
    if (!is_numeric($v) || $v <= 0)
    {
      throw new Exception("invalid param");
    }
    return $v;
  }
}

class Account
{
  private $accountId;
  private $user;
  private $pass;
  private $name;
  private $isAuthenticated = false;

  function __construct($user)
  {
    $db = DB::getInstance();
    $data = $db->getData("usuario('{user}')", array('user'=>$user), true);
    $this->user = $data['Usuario'];
    $this->accountId = $data['Id'];
    $this->pass = $data['Clave'];
    $this->name = $data['Nombre'];
  }

  public function authenticate($pass)
  {
    $this->isAuthenticated = $pass == $this->pass;
    return $this->isAuthenticated();
  }

  public function isAuthenticated()
  {
    return $this->isAuthenticated;
  }

  public function getAccountId()
  {
    return $this->accountId;
  }

  public function getUsername()
  {
    return $this->user;
  }

  public function getName()
  {
    return $this->name;
  }

  public function checkPermission($permission)
  {
    return true;
  }
}

class ExceptionManager
{
  public function handleException($ex)
  {
    file_put_contents("logs.txt", $ex);
  }
}

class Manager
{
  private $account;

  function __construct($account)
  {
    $this->account = $account;
  }

  public function transactions($type)
  {
    return array();
  }

  public function getFamilies()
  {
    $db = DB::getInstance();
    $data = $db->getData("families()");

    $d = array();
    foreach ($data as $row) {
      $d[] = array('itemId' => $row['Id'], 'itemValue' => $row['Nombre']);
    }

    return $d;
  }

  public function getGenres()
  {
    $db = DB::getInstance();
    $data = $db->getData("genres()");

    $d = array();
    foreach ($data as $row) {
      $d[] = array('itemId' => $row['Id'], 'itemValue' => $row['Nombre']);
    }

    return $d;
  }

  public function getSpecies()
  {
    $db = DB::getInstance();
    $data = $db->getData("species()");

    $d = array();
    foreach ($data as $row) {
      $d[] = array('itemId' => $row['Id'], 'itemValue' => $row['Nombre']);
    }

    return $d;
  }

  public function saveNewEntry($request)
  {

  }
}

class Report
{
  private $data;

  function __construct($wsRequest, $account, $pending)
  {
    $this->data = $pending;
  }

  public function getReportTable()
  {
    $table = "<thead>
                 <tr>
                  <th># de Registro</th>
                  <th>Familia</th>
                  <th>Género</th>
                  <th>Especie</th>
                  <th>Colector</th>
                  <th>Validador</th>
                  <th>Dirección</th>
                  <th>Fecha de Colecta</th>
                </tr>
              </thead>";

    $table .= "<tbody>";

    if(count($this->data)>0){
      foreach ($this->data as $p){
        $id = $p->id;
        $rowType = ($id != 0) ? '' : 'warning';

        $row = "<tr class='$rowType'>
          <td>
            <a title='Open' class=\"btn btn-primary btn-xs\" data-toggle=\"modal\" data-target=\"#myModal$id\">$id</a>
          </td>
          <td>$p->family</td>
          <td>$p->genre</td>
          <td>$p->species</td>
          <td>$p->collector</td>
          <td>$p->validator</td>
          <td>$p->address</td>
          <td>$p->collectDate</td>
        </tr>";

        $table .= $row;
      }
    }else{
      $table .= "<td colspan='10'>No Records!</td>";
    }

    $table .= "</tbody>";

    return $table;
  }

  public function getTotal()
  {
    return 0;
  }

  public function getPaginationTable()
  {
    return "paginacion";
  }

}

class Util
{
  const REGEX_ALPHANIMERIC = '';
  const REGEX_NUMERIC = '';
  const FORMAT_DATE_DISPLAY = '';
}