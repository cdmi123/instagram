<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\index;
use App\Http\Controllers\feed;
use App\Http\Controllers\follow;
use App\Http\Controllers\post;
use App\Http\Controllers\profile;
use App\Http\Controllers\chat;
use App\Http\Controllers\story;
use App\Http\Controllers\admin;



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



Route::any('/',[index::class,'index']);
Route::any('/register',[index::class,'register']);
Route::any('/logout',[index::class,'logout']);

Route::any('/upload_story',[story::class,'index']);

Route::any('/feed',[feed::class,'feed']);
Route::any('/delete/{id}',[feed::class,'delete']);
Route::any('/update/{id}',[feed::class,'update']);
Route::any('/update_enable/{id}',[feed::class,'update_enable']);



Route::any('/folo',[follow::class,'folo']);
Route::any('/unfolo',[follow::class,'unfolo']);

Route::any('/post_uplode',[post::class,'post']);

Route::any('/explore',[index::class,'explore']);


Route::any('/chat',[chat::class,'chat']);
Route::any('/user_chat_id',[chat::class,'chat_user']);



Route::any('/trending',[index::class,'trending']);
Route::any('/setting',[index::class,'setting']);


Route::any('/profile',[profile::class,'profile']);

/* Admin */

Route::any('/admin-login',[admin::class,'index']);
Route::any('/dashboard',[admin::class,'dashboard']);

Route::any('/total_post',[admin::class,'total_post']);





