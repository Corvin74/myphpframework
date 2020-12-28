<?php
  namespace application\lib;
  
  use PDO;
  use PDOException;
  
  /**
   *
   * @author corvin
   *        
   */
  class Db {
    protected $db;
  
    /**
     */
    public function __construct(){
      $config = require 'application/config/db.php';
      $connection = "mysql:host=" . $config['hostname'] . ";dbname=" . $config['dbname'] . ";charset=" . $config['charset'];
      try {
        $this->db = new PDO($connection, $config['username'], $config['userpassword']);
      } catch (PDOException $dbError) {
        print "Error!: " . $dbError->getMessage();
        die();
      }
    }
    
    public function query( $sql ) {
      $query = $this->db->query($sql);
      return $query;
    }
    
    public function getRow($sql) {
      $result = $this->query($sql);
      return $result->fetchAll(PDO::FETCH_ASSOC);
    }
    
    public function getColumn($sql) {
      $result = $this->query($sql);
      return $result->fetchColumn();
    }
  }

