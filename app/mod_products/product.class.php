<?php

class Product extends ActiveRecord
{
	function link()
	{
		if($this->get('link')!=''){
			return $this->get('link');
		}
		if($this->get('url')=='index'){
			return '/';
		}
			return '/' . $this->get('url');
	}
}