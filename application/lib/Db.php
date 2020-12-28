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
    
    public function query( $sql, $params = [] ) {
      $preparedQuery = $this->db->prepare($sql);
      if (!empty($params)) {
          foreach ($params as $key => $value) {
              $preparedQuery->bindValue(':' . $key, $value);
          }
      }
      $preparedQuery->execute();
      return $preparedQuery;
    }
    
    public function getRow( $sql, $params = [] ) {
      $result = $this->query( $sql, $params );
      return $result->fetch( PDO::FETCH_ASSOC );
    }
    
    public function getColumn( $sql, $params = [] ) {
      $result = $this->query( $sql, $params );
      return $result->fetchColumn();
    }
  }

