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
//       $params = [
//           'id' => 3,
//       ];
//       $result = $db->getRow('SELECT * FROM dic_users WHERE id = :id', $params);
//       debug($result);
      $this->model->getUsers();
      $this->view->render('Главная страница сайта', $vars);
//       echo 'Главная страница сайта';
    }
  }
  
