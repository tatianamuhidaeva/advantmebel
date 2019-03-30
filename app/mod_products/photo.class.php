<?php
/*
	Модуль для работы с текстовыми страницами, для вывода меню, выода подстраниц
*/
class Photo extends ActiveRecord
{
	function title() {
		if($this->get('image')){
			return '<img src="' . d()->preview(array($this->get('image'), '90', 'auto')) . '">';
		}
		return 'Нет изображения';
	}
}

