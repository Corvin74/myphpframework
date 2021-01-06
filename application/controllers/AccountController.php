<?php
  namespace application\controllers;
  
  use application\core\Controller;
    
  class AccountController extends Controller {
    /**
     * 
     * 
     */
    public function before() {
//       $this->view->layout = 'custom';
    }
    
    public function loginAction() {
      if ( !empty( $_POST ) ) {
//         $this->view->message('success', 'message');
        $this->view->redir('/');
      }
      $this->view->render('Страница входа');
    }
    
    public function registerAction() {
      $this->view->render('Страница регистрации');
    }
  }