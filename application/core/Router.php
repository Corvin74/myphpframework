<?php
namespace application\core;

/**
 * 
 * @author corvin
 *
 */
class Router {
  /**
   *  
   * @var array
   */
  protected $routes = [];
  /**
   * 
   * @var array
   */
  protected $params = [];
  
  public function __construct() {
    $croutes = require 'application/config/routes.php';
    foreach ($croutes as $key => $value) {
      $this->add($key, $value);
    }
//     debug($this->routes);
  }
  
  /**
   * Функция для заполнения массива self::routes из файла конфмгурации config/routes.php
   *  
   * @param string $route
   * @param string $params
   */
  public function add($route, $params) {
    $route = '#^' . $route . '$#';
    $this->routes[$route] = $params;
  }
  
  /**
   * Функция для проверки существования маршрута
   * 
   */
  public function match() {
    $currentURL = trim($_SERVER['REQUEST_URI'], '/');
    $matches = '';
    foreach ($this->routes as $route => $params) {
//       echo 'route = ' . $route . 'currentURL = ' . $currentURL;
      if (preg_match($route, $currentURL, $matches)) {
        $this->params = $params;
        return TRUE;
      }
    }
    return FALSE;
  }
  
  /**
   *
   */
  public function run() {
    if ($this->match()) {
      $controllerPath = 'application\controllers\\' . ucfirst($this->params['controller'].'Controller');
      if (class_exists($controllerPath)) {
        $currentAction = $this->params['action'] . 'Action';
        if(method_exists($controllerPath, $currentAction)) {
          $currentController = new $controllerPath($this->params);
          $currentController->$currentAction();
        } else {
          $controllerTmp = explode('\\', $controllerPath);
          echo '<p><b style="color: red;">Метод "' . substr($currentAction, 0, strlen($currentAction) - 6) . '" в классе "' . substr($controllerTmp[2], 0, strlen($controllerTmp[2]) - 10) . '" не найден!' . '</b></p>';
        }
      } else {
        echo '<p><b style="color: red;">' . 'Класс: ' . $controllerPath . ' не найден!' . '</b></p>';
      }
    } else {
      echo '<p><b style="color: red;">' . 'Error:404 - Маршрут не найден!' . '</b></p>';
    }
  }
  
}
