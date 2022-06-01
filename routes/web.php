<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BlogController;

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

Route::view('/', 'home')->name('home');
Route::view('/acerca-de', 'about')->name('about');

//Route::view('blog', 'BlogController@index')->name('blog.index');
//Route::view('blog/{post:slug}', 'BlogController@show')->name('blog.show');
// The route we have created to show all blog posts.
// Route::get('/blog', [\App\Http\Controllers\PostController::class, 'index']);

// RUTAS DO TUTORIAL
// Route::get('/blog', 'BlogController@index')->name('blog.index');
// Route::get('/blog/{post:slug}', 'BlogController@show')->name('blog.show');

// RUTAS NOE
Route::get('/blog', [BlogController::class, 'index'])->name('blog.index');
Route::get('/blog{post:slug}', [BlogController::class, 'show'])->name('blog.show');

Route::view('/contacto', 'contact')->name('contact');

Route::get('/sol', function () {
    return view('entrada');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');

require __DIR__ . '/auth.php';


// chamar formulario para subir imaxes
// https://codea.app/blog/subir-imagenes-con-laravel
// Route::get('codea',[CodeaController::class , 'index' ] );
// gardar
// Route::post('codeaguardar',[CodeaController::class , 'codeaguardar' ] );



//Route::get('/blog/create/post', [\App\Http\Controllers\PostController::class, 'create']); //shows create post form
Route::post('/blog/create/post', [\App\Http\Controllers\PostController::class, 'store']); //saves the created post to the databse
Route::get('/blog/{blogPost}/edit', [\App\Http\Controllers\PostController::class, 'edit']); //shows edit post form
Route::put('/blog/{blogPost}/edit', [\App\Http\Controllers\PostController::class, 'update']); //commits edited post to the database
Route::delete('/blog/{blogPost}', [\App\Http\Controllers\PostController::class, 'destroy']); //deletes post from the database
