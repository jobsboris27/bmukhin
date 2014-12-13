<div class="wrapper-content-info contact">
	<h3>У вас интересный проект? Напишите мне</h3>
	<form class="wrapper-contact" id="form" action="" method="post">
		<div class="contact-column">
			<div class="contact-column-1">
				<p><label for="name">Имя</label></p>
				<input id="name" data-toggle="tooltip" class="formValid" data-placement="left" title="введите имя" name="name" type="text" value="Как к вам обращаться" required/>
			</div>
			<div class="contact-column-2">
				<p><label for="mail">Email</label></p>
				<input id="mail" name="email" data-toggle="tooltip"  class="formValid" data-placement="right" title="введите почту" type="text" value="Куда мне писать" required/>
			</div>
		</div>
		<p><label for="text">Сообщение</label></p>
		<textarea id="text" name="message" data-toggle="tooltip"  class="formValid" data-placement="left" title="введите сообщение" placeholder="Кратко в чем суть" required></textarea>
		<div class="contact-column capctha">
		<p>Введите код, указанный на картинке</p>
			<div class="contact-column-1">
				<img src="/template/img/capctha.png"/>
			</div>
			<div class="contact-column-2">
				<input type="text" id="captcha" data-toggle="tooltip"  class="formValid" data-placement="right" title="не совпадают символы" name="captcha" value="Введите код" required/>
			</div>
		</div>
		<div class="contact-column button">
			<div id="node"></div>
			<div class="contact-column-1">
				<button class="btn btn-send">Отправить</button>
			</div>
			<div class="contact-column-2">
				<button class="btn btn-clear">Очистить</button>
			</div>
		</div>
	</form>
</div>