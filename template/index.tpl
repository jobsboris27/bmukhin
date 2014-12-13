<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="/template/favicon.ico" type="image/x-icon">
<link rel="icon" href="/template/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="/template/favico.ico" type="image/x-icon">
<link rel="stylesheet" href="/template/css/style.css" />
<title>Мое первое задание</title>
</head>
<body>
	<header>
		<div class="header-wrapper">
			<img src="/template/img/logo.png"/>
			<ul>
				<li><a href=""><i class="icon icon-vk"></i></a></li>
				<li><a href=""><i class="icon icon-twitter"></i></a></li>
				<li><a href=""><i class="icon icon-facebook"></i></a></li>
				<li><a href=""><i class="icon icon-github"></i></a></li>
			</ul>
		</div>
	</header>
	<div class="wrapper">
			<?php include_once('sidebar.tpl')?>
		<div class="wrapper-content">
			<?php echo $content ?>
		</div>
	</div>
	<footer>
		<div class="wrapper-footer">
			<p>© 2014, Это мой сайт, пожалуйста, не копируйте и не воруйте его</p>
		</div>
	</footer>
<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="/lib/bootstrap/js/bootstrap.min.js"></script>
<script src="/template/js/script.js"></script>
</body>
</html>