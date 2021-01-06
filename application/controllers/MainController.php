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
//       $params = [
//           'id' => 3,
//       ];
//       $result = $db->getRow('SELECT * FROM dic_users WHERE id = :id', $params);
//       debug($result);
//       $sqlQuery = "SELECT * FROM dic_users";
//       debug($this->model->getUsers($sqlQuery));
      $resultQuery = $this->model->getNews('SELECT * FROM news');
      $vars = [
        'news' => $resultQuery,
      ];
      $this->view->render('Главная страница сайта', $vars);
//       echo 'Главная страница сайта';
    }
  }
  
