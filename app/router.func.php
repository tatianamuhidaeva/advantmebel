<?php
//Автоматически регистрировать все контроллеры
route_all();

route('/error_404', 'error_404');
route('/', 'pages#');
route('/contacts', 'pages#contacts');
route('/catalogs', 'catalogs#index');
route('/catalogs/', 'catalogs#show');
route('/products/', 'products#show');
route('/news', 'news#index');
route('/news/', 'news#show');

route('/ajax/popup', 'main', 'popup#popup');
// route('/thankyou', 'main', 'popup#thanks');

//закомментировала до того, как разберемся. Пока ajax выдает success
route('/ajax/form1', 'main', 'popup#send_form');

route('/robots.txt', 'main', 'show_robots');

//route('/news/index', 'news#index');
//зарегистрировать контроллер newscontroller по адресу /news/
//route('news');
//зарегистрировать контроллер newscontroller по адресу /press/
//route('/press/','news#');


