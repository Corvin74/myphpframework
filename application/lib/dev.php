<?php
  //namespace application\lib;
  ini_set('display_errors', 1);
  error_reporting(E_ALL);
  
  function debug($param, $stoped = FALSE) {
    echo'<pre>';
    var_dump($param);
//     print_r($param);
    echo'</pre>';
    if ($stoped) {
      exit;
    }
  }
  