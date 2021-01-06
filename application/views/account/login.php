<?php namespace application\views\account;?>
  <p>Страница входа</p>
  <form method="post" action="/account/login">
    <p>Логин</p>
    <p><input type="text" name="login"></p>
    <p>Пароль</p>
    <p><input type="password" name="password"></p>
    <b><button type="submit" name="enter">Вход</button></b>
  </form>
