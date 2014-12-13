<?php 
//email
$post = (!empty($_POST)) ? true : false;

if($post)
{

	$email = trim($_POST['email']);
	$name = htmlspecialchars($_POST['name']);
	$email = htmlspecialchars($_POST['email']);
	$message = htmlspecialchars($_POST['message']);

	if(!$name)
	{
		$error[] = 'name';
	}

	// Check email
	function ValidateEmail($value)
	{
		$regex = '|^[-0-9a-z_\.]+@[-0-9a-z_^\.]+\.[a-z]{2,6}$|i';

		if($value == '') {
			return false;
		} else {
			$string = preg_replace($regex, '', $value);
		}

		return empty($string) ? true : false;
	}

	if(!$email)
	{
		$error[] = 'mail';
	}

	if($email && !ValidateEmail($email))
	{
		$error[] = 'mail';
	}

	// Check message (length)

	if(!$message || strlen($message) < 1)
	{
		$error[] = "text";// В этой строчке ставиться минимальное ограничение на написание букв.
	}
	if(!$error)
	{
		$mail = mail("jobs@sss.ru", $subject, $message,
		"From: ".$name." <".$email.">rn"
		."Reply-To: ".$email);
	if($mail)
	{
		echo 'OK';
	}

	}
	else
	{
		echo json_encode($error);
	}

}

//email
