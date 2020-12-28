<?php
  namespace application\controllers;
  
  use application\core\Controller;
  use application\lib\Db;
    
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
      $db = new Db();
      $params = [
          'id' => 1,
      ];
      $result = $db->getRow('SELECT * FROM dic_users WHERE id = :id', $params);
      debug($result);
      $this->view->render('Главная страница сайта', $vars);
//       echo 'Главная страница сайта';
    }
  }
  
