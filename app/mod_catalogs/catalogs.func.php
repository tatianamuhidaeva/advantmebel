<?php
/*
	Модуль для работы с текстовыми страницами, для вывода меню, выода подстраниц
*/
class CatalogsController
{
	function show($url)
	{
		// echo $url;
		// print (d()->Catalog->find_by_url($url));
		d()->this = d()->Catalog->find_by_url($url);
		if (d()->this->is_empty) {
			$mas = array ();
			$mas[] = array ('title' => 'Главная', 'link' => '/');
			$mas[] = array ('title' => 'Каталог', 'link' => 'catalogs');
			$mas[] = array ('title' => 'Ошибка 404');
			d()->message="Такой страницы не существует".d()->add(array('catalogs','url'=>$url));
			d()->breadcrumbs = $mas;
			return d()->error('404');
		}
		$mas = array ();
		$mas[] = array ('title' => 'Главная', 'link' => '/');
		$mas[] = array ('title' => 'Каталог', 'link' => 'catalogs');
		$mas[] = array ('title' => d()->this->title, 'link' => d()->this->link);
		d()->breadcrumbs = $mas;
		
		print d()->view();
	}
}

?>
