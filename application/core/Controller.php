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
  public $model;

  /**
   */
  public function __construct($route) {
    $this->route = $route;
    $this->view = new View($this->route);
    $this->model = $this->loadModel($route['controller']);
    if (method_exists($this, 'before')) {
      $this->before();
    }
  }
  
  public function loadModel($modelName) {
    $pathToModel = str_replace('/', '\\', 'application/models/' . ucfirst($modelName));
    if (class_exists($pathToModel)) {
      return new $pathToModel;
    }
  }
}

