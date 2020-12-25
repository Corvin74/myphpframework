<?php
namespace application\core;

use application\core\View;


/**
 *
 * @author corvin
 *        
 */
abstract class Controller
{
  public $route;
  public $view;

  /**
   */
  public function __construct($route) {
    $this->route = $route;
    $this->view = new View($this->route);
    if (method_exists($this, 'before')) {
      $this->before();
    }
  }
}

