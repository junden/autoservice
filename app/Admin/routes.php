<?php

Route::get('', ['as' => 'admin.dashboard', function () {
	$content = 'Добро пожаловать!';
	return AdminSection::view($content, 'Главная');
}]);

Route::get('logout',[
    'as'=>'admin.logout','uses'=>'App\Http\Controllers\Auth\LoginController@logout']);

