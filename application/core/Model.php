<?php
  namespace application\core;
  
  use application\lib\Db;
  
  /**
   *
   * @author corvin
   *        
   */
  abstract class Model {
    
    public $db;
  
    /**
     */
    public function __construct() {
      $this->db = new Db;
      
    }
  }

