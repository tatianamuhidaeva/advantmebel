<?php
//Автоматически регистрировать все контроллеры
route_all();

route('/error_404', 'error_404');
route('/', 'pages#');
// route('/about', 'pages#about');
route('/contacts', 'pages#contacts');
route('/catalogs/', 'catalogs#show');
route('/products/', 'products#show');

//закомментировала до того, как разберемся. Пока ajax выдает success
// route('/ajax/form1', 'main', 'pages#send_form');

//route('/news/index', 'news#index');
//зарегистрировать контроллер newscontroller по адресу /news/
//route('news');
//зарегистрировать контроллер newscontroller по адресу /press/
//route('/press/','news#');


