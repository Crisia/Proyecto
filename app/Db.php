<?php

class DB
{

  /**
   * @var DB
   */
  private static $db;

  private $conn;

  private function __construct(){}

  /**
   * @return DB
   */
  public static function getInstance()
  {
    if (!DB::$db)
    {
      DB::$db = new DB();
    }
    return DB::$db;
  }

  private function openConnection()
  {
    $this->conn = @mysqli_init();
    @mysqli_real_connect($this->conn, DB_HOST, DB_USER, DB_PASS, DB_NAME);

    if (@mysqli_connect_errno())
    {
      throw new Exception('Could not connect: ' . @mysqli_connect_error());
    }
  }

  private function closeConnection($lastResultSet)
  {
    if ($lastResultSet)
    {
      @mysqli_free_result($lastResultSet);
    }

    while(@mysqli_more_results($this->conn))
    {
      if(@mysqli_next_result($this->conn))
      {
        $result = @mysqli_use_result($this->conn);
        if ($result)
        {
          @mysqli_free_result($result);
        }
      }
    }

    @mysqli_close($this->conn);
  }

  private function processParams($statement, $params)
  {
    if (is_array($params))
    {
      foreach ($params as $key=>$value)
      {
        $statement = str_replace("{".$key."}", @mysqli_escape_string($this->conn, $value), $statement);
      }
    }
    return $statement;
  }

  public function getData($statement, $params = array(), $single = false)
  {
    $this->openConnection();

    $statement = $this->processParams($statement, $params);
    @mysqli_query($this->conn, "SET NAMES 'UTF8'");
    $result = @mysqli_query($this->conn, "call $statement;");
    if ($result === FALSE)
    {
      throw new Exception('Sql execution error: ' . @mysqli_error($this->conn));
    }

    $data = array();
    if ($single)
    {
      $data = @mysqli_fetch_assoc($result);
    }
    else
    {
      for (; $currentRow = @mysqli_fetch_assoc($result);)
      {
        $data[] = $currentRow;
      }
    }

    return $data;
  }

}