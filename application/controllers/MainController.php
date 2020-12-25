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
    public function indexAction() {
//      $this->view->path = 'main/index1';
      $vars = [
        'name' => 'Вася',
      ];
      $this->view->render('Главная страница сайта', $vars);
//       echo 'Главная страница сайта';
    }
  }
  
