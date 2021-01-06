<?php
  namespace application\core;
  
  /**
   *
   * @author corvin
   *        
   */
  class View {
  
    public $path;
    public $route;
    public $layout = 'default';
    
    /**
     */
    public function __construct($route){
      $this->route = $route;
      $this->path = $route['controller'] . '/' . $route['action'];
    }
    
    public function render($title, $vars = []) {
      extract( $vars );
      $pageBody = 'application/views/' . $this->path . '.php';
      if ( file_exists( $pageBody ) ) {
        ob_start();
        require $pageBody;
        $content = ob_get_clean();
        $pageLayout = 'application/views/layouts/' . $this->layout . '.php';
        if ( file_exists( $pageLayout ) ) {
          require $pageLayout;
        }
        
      } else {
        echo '!!!Вид: '. 'application/views/' . $this->path . '.php' . ' не найден на сервере!!!';
      }
      unset($content);
    }
    
    public function redirect( $url ) {
      header( 'location: ' . $url );
      exit();
    }
    
    public static function errorCode( $code ) {
      http_response_code( $code );
      $page = 'application/views/errors/' . $code .'.php';
      if ( file_exists( $page ) ) {
        require $page;
      }
      exit();
    }
    
    public function message($status, $message) {
      exit( json_encode( [ 'status' => $status, 'message' => $message ] ) );
    }
    
    public function redir($url) {
      exit( json_encode( [ 'url' => $url ] ) );
    }
    
  }
  
