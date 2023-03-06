<?php

use App\Http\Controllers\Backend\AdminController;
use App\Http\Controllers\Backend\BlogpostController;
use App\Http\Controllers\Backend\CategoryController;
use App\Http\Controllers\Backend\CommentController;
use App\Http\Controllers\Frontend\HomeController;
use App\Models\Category;
use Illuminate\Support\Facades\Route;

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

// Route::get('/', function () {
//     return view('welcome');
// });
Route::get('/', [HomeController::class, 'index'])->name('blog.home');
Route::get('/blogpost/read/{blogpost_id}', [HomeController::class, 'readBlog'])->name('blog.read');
Route::get('/category/explore/{category_id}', [HomeController::class, 'exploreCategory'])->name('category.explore');

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/dashboard', function () {
        $categories = Category::all();
        return view('Backend.Dashboard.dashboard', ['categories' => $categories]);
    })->name('dashboard');
    Route::get('/add/category', [CategoryController::class, 'addcategory'])->name('category.add');
    Route::post('/add/category', [CategoryController::class, 'addcategoryFinal'])->name('category.add.submit');
    Route::get('/manage/category', [CategoryController::class, 'manageCategoryPage'])->name('category.manage');
    Route::get('/manage/category/delete/{category_id}', [CategoryController::class, 'deleteCategory'])->name('category.delete');
    Route::get('/update/category/{category_id}', [CategoryController::class, 'updateCategoryPage'])->name('category.edit');
    Route::post('/update/category/{category_id}', [CategoryController::class, 'updateCategory'])->name('category.edit.update');
    Route::get('/add/blogpost', [BlogpostController::class, 'addPostPage'])->name('blogpost.add');
    Route::post('/add/blogpost', [BlogpostController::class, 'addPost'])->name('blogpost.add.submit');
    Route::get('/manage/blogpost', [BlogpostController::class, 'managePostPage'])->name('post.manage');
    Route::get('manage/blogpost/delete/{blogpost_id}', [BlogpostController::class, 'deletePost'])->name('blogpost.delete');
    Route::get('/update/blogpost/{blogpost_id}', [BlogpostController::class, 'blogEditPage'])->name('blog.edit');
    Route::post('/update/blogpost/{blogpost_id}', [BlogpostController::class, 'updateBlogpost'])->name('blog.edit.submit');
    Route::get('/add/user', [AdminController::class, 'userAddPage'])->name('user.add');
    Route::post('/add/user', [AdminController::class, 'addUser'])->name('user.add.submit');
    Route::get('/manage/user', [AdminController::class, 'manageUserPage'])->name('user.manage');
    Route::get('/manage/user/delete/{user_id}', [AdminController::class, 'deleteUser'])->name('user.delete');
    Route::get('/update/user/{user_id}', [AdminController::class, 'editUserPage'])->name('user.edit');
    Route::post('/update/user/{user_id}', [AdminController::class, 'editUser'])->name('user.edit.update');
    Route::post('/comment/add/{blog_id}', [CommentController::class, 'commentPost'])->name('comment.submit');
    // Route::get('/add/product', [ProductController::class, 'add'])->name('add.product.page');
});
