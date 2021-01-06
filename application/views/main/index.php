<p>Главная страница</p>
<?php foreach ($news as $val):?>
<div class='news_title'><h3><?php echo($val['news_header'])?></h3></div>
<div class='news_body'><p><?php echo($val['news_body'])?></p></div>
<hr>
<?php endforeach;?>
