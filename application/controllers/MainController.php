<?php
  namespace application\controllers;
  
  use application\core\Controller;
    
  /**
   *
   * @author corvin
   *        
   */
  class MainController extends Controller {
  
    /**
     */
    public function __construct() {
      
    }
    
    /**
     */
    public function indexAction() {
      echo 'Главная страница сайта';
    }
  }
  
