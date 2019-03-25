<?php
/*
	Модуль для работы с текстовыми страницами, для вывода меню, выода подстраниц
*/
class Catalog extends ActiveRecord
{
	function link()
	{
		if($this->get('link')!=''){
			echo "this-get('link')";
			return $this->get('link');
		}
		if($this->get('url')=='index'){
			echo '/';
			return '/';
		}
		echo "/$this->get('url')";
			return '/' . $this->get('url');
	}
}