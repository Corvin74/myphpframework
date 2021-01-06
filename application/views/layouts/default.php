<?php namespace application\views\layouts;?>
<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../public/styles/reset.css" />
  <link rel="stylesheet" href="../public/styles/style.css" />
  <title><?php echo $title; ?></title>
</head>
<body>
<?php echo $content;?>
<script src="../public/scripts/jquery-3.5.1.js"></script>
<script src="../public/scripts/form.js"></script>
</body>
</html>