$(document).ready(function(){
	var middleMenu = $(".wrapper-sidebar .sidebar-nav ul li:eq(1) a"),
		lastMenu = $(".wrapper-sidebar .sidebar-nav ul li:last a"),
		firstMenuAfter = $(".wrapper-sidebar .sidebar-nav ul li:eq(0) a"),
		addButtonProject = $(".last"),
		popup = $(".popup"),
		popupForm = $(".popup .popup-content form"),
		popupContent = $(".popup-content"),
		closeButton = $(".close"),
		bodyAdd = $('.wrapper-content-info'),
		uploadFile = $("#imgProject"),
		uploadText = $(".fileText"),
		body = $('body'),
		sendMail = $('.btn-send'),
		clearMail = $('.btn-clear'),
		inputText = body.find("input[type='text']"),
		form = body.find("form");
		
	if(middleMenu.hasClass('active')){
		firstMenuAfter.addClass('noAfter');
	};
	if(lastMenu.hasClass('active')){
		middleMenu.addClass('noAfter');
	};

	
	body.on('click', ".last", function(){
		popup.addClass('popup-active');
		popupContent.addClass('popup-content-active');
	});
	body.on('click', ".close", function(){
		popup.removeClass('popup-active');
		popupContent.removeClass('popup-content-active');
	});
	
	body.keydown(function(eventObject){
			if (eventObject.which == 27){
				popup.removeClass('popup-active');
				popupContent.removeClass('popup-content-active');
			}
		});
	
	// clear input
	inputText.click(function(){
		this.value = "";
	});
	// clear input
	
	// upload file
	uploadFile.change(function(){
		var valueFile = $(this).val();
		uploadText.text(valueFile);
		console.log(valueFile);
	})	
	// upload file
	
	//send Ajax form
	sendMail.click(function(){
		var str = $("#form").serialize();
		$.ajax({
			type: "POST",
			url: "/mail.php",
			data: str,
			success: function(msg) {
				
				if(msg == 'OK') {
					result = 'Ваше сообщение было отправлено';
					$("#node").html(result);
				} else {
					var parse = JSON.parse(msg);
					parse.forEach(function(item){
						$('#'+item).tooltip('show');
						$('#'+item).addClass('tooltip-error');
						
					});
									
				}
				
			}
		});
		if($('.formValid').hasClass('tooltip-error')){
			$('.formValid').removeClass('tooltip-error');
		}
		return false;
	});
	 //$('[data-toggle="tooltip"]').tooltip('show');
	clearMail.click(function(){
	
		form.find('input').val('');
		form.find('textarea').attr('placeholder','');
		return false
	})
	//send Ajax form
	
});