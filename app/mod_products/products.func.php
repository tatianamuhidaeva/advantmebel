<?php
class ProductsController
{
	function show($url)
	{
		$mas = array ();
		$mas1 = array ();
		d()->this = d()->Product->find_by_url($url);

		if (d()->this->is_empty) {
			$mas[] = array ('title' => 'Главная', 'link' => '/');
			$mas[] = array ('title' => 'Каталог', 'link' => '/catalogs');
			$mas[] = array ('title' => 'Ошибка 404');
			d()->message="Такой страницы не существует".d()->add(array('product','url'=>$url));
			d()->breadcrumbs = $mas;
			return d()->error('404');
		}
		d()->photo = d()->Photo->where('product_id = ?', d()->this->id);
		d()->cat = d()->Catalog->find_by_id(d()->this->catalog_id);
		$mas1[] = array ('title' => d()->this->title, 'link' => '/products/' . d()->this->url);
		while (true) {
			$mas1[] = array ('title' => d()->cat->title, 'link' => '/catalogs/' . d()->cat->url);
			d()->cat = d()->Catalog->where('id = ?', d()->cat->catalog_id);
			if (d()->cat->is_empty) {
				break;
			}
		}
		$mas1[] = array ('title' => 'Каталог', 'link' => '/catalogs');
		$mas1[] = array ('title' => 'Главная', 'link' => '/');
	
		$mas = array_reverse($mas1);
		d()->breadcrumbs = $mas;
	
		print d()->view();
	}
}

