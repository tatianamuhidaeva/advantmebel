<?php
/*
	Модуль для работы с текстовыми страницами, для вывода меню, выода подстраниц
*/
class PagesController
{
	function show()
	{
		$url = url();
		d()->this = d()->Page->find_by_url($url);
		if (d()->this->is_empty) {
			$mas = array ();
			$mas[] = array ('title' => 'Главная', 'link' => '/');
			$mas[] = array ('title' => 'Ошибка 404');
			d()->message="Такой страницы не существует".d()->add(array('pages','url'=>$url));
			d()->breadcrumbs = $mas;
			return d()->error('404');
		}
		$mas = array ();
		$mas[] = array ('title' => 'Главная', 'link' => '/');
		$mas[] = array ('title' => d()->this->title, 'link' => d()->this->link);
		d()->breadcrumbs = $mas;
		
		print d()->view();
	}

	function contacts()
	{
		$url = url();
		d()->this = d()->Page->find_by_url($url);
		if (d()->this->is_empty) {
			d()->message="Такой страницы не существует".d()->add(array('pages','url'=>$url));
			return d()->error('404');
		}
		$mas = array ();
		$mas[] = array ('title' => 'Главная', 'link' => '/');
		$mas[] = array ('title' => d()->this->title, 'link' => d()->this->link);
		d()->breadcrumbs = $mas;
		
		print d()->view();
	}

	function send_form () {
		if (d()->validate('popup_form')) {
			if (isset(d()->params['check']) && d()->params['check'] == '') {
				d()->form_title = 'Форма Заказать звонок';
				$emails = explode(",", d()->Option->email);
				foreach ($emails as $email) {
					$message = d()->pages_mail_f1_tpl();
					if (d()->Option->is_smtp){
						d()->mail->setFrom(array(d()->Option->smtp_address => d()->Option->smtp_name));
					} else {
						d()->mail->setFrom(array($_ENV['EMAIL_FROM_ADDRESS'] => $_ENV['EMAIL_FROM_NAME']));
					}
					d()->mail->setTo(trim($email));
					d()->mail->setSubject(d()->form_title . ' с ' . $_SERVER['HTTP_HOST']);
					d()->mail->setBody($message, 'text/html');
					if (d()->Option->is_smtp){
						if (d()->Option->is_smtp_ssl){
							$bb = new Swift_SmtpTransport(d()->Option->smtp_host, d()->Option->smtp_port, 'ssl');
							$transport = $bb->setUsername(d()->Option->smtp_login)->setPassword(d()->Option->smtp_password);
						} else {
							$bb = new Swift_SmtpTransport(d()->Option->smtp_host, d()->Option->smtp_port);
							$transport = $bb->setUsername(d()->Option->smtp_login)->setPassword(d()->Option->smtp_password) ;
						}
						d()->mail->setTransport($transport);
					}
					d()->mail->send();
				}
				
				$cont = d()->Clientcontact->new;
				$cont->phone = d()->params['phone'];
				$cont->name = d()->params['name'];
				$cont->form_name = d()->form_title;
				$cont->save;
				
				print 'document.location.href="/thankyou"';
			}
			
			exit;
		}
		
		d()->reload();
	}

}
