<?php
  namespace application\models;
  
  use application\core\Model;
  
  /**
   *
   * @author corvin
   *        
   */
  class Main extends Model{
  
    /**
     *
     */
    public function getUsers($sqlQuery) {
//       debug($this->db);
      return $this->db->getRow($sqlQuery);
    }
    
    /**
     *
     */
    public function getNews($sqlQuery) {
      return $this->db->getRow($sqlQuery);
    }
  }
  
