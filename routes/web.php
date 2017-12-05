<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('admin');


Route::get('contact', 'CatalogController@contact')->name('contact');
Route::auth();

Route::post('contact','CallbackController@send');

Route::get('', 'CatalogController@page');

Route::get('{url}', 'CatalogController@show')->name('content_page');


