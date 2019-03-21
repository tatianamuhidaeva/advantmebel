<?php



/**
* Контролер
*/
class ContactsController
{



	
	/**
	* Список всех элементов
	*/	
	function index()
	{
		d()->contacts_list = d()->Contact;
		print d()->view();
	}



}

