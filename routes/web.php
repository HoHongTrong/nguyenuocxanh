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

Route::get('/', function () {
    return view('welcome');
});

Route::group(['prefix' => 'admin'], function () {
  Route::get('register/list','DangKyController@getDangky');

  Route::get('download', 'ExportController@getExport');
});


Route::get('pages/dangky','PagesController@getdangky');
Route::post('pages/dangky','PagesController@postdangky');
