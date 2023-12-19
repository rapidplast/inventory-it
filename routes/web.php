<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\InvoiceController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\CustomerController;
use Illuminate\Http\Request;

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
// {{-- CHANGE THIS --}}
Route::view('/', 'landing')->name('landing');

Route::get('/login', [AuthController::class, 'showLoginForm'])->name('login');


// Product
Route::get('/add-product', function () {
    return view('Admin.add_product');
})->name('add.product');

// Rute untuk menampilkan halaman import produk
Route::get('/import-products-form', [ProductController::class, 'showImportForm'])->name('import.products.form');

// Rute untuk memproses impor produk
Route::post('/import-products', [ProductController::class, 'importProducts'])->name('import.products');

Route::get('/all-product', [ProductController::class, 'allProduct'])->name('all.product');

Route::get('/edit-product/{id}', [ProductController::class, 'editProduct'])->name('edit.product');

Route::post('/insert-product', [ProductController::class, 'store']);

Route::put('/update-status/{id}', [ProductController::class, 'updateStatus'])->name('update.status');

Route::put('/update-product/{id}', [ProductController::class, 'updateProduct'])->name('update.product');

Route::delete('/delete-product/{id}', [ProductController::class, 'deleteProduct'])->name('delete.product');

Route::put('/product/move-to-disposal/{id}', [ProductController::class, 'moveToDisposal'])->name('move.to.disposal');

Route::get('/disposal-product', [ProductController::class, 'disposal'])->name('disposal.product');

Route::get('/disposal', [ProductController::class, 'disposal'])->name('disposal');

Route::post('/logout', [AuthenticatedSessionController::class, 'destroy'])
    ->middleware('auth')
    ->name('logout');

// Route::get('/dashboard', function () {
//     return view('dashboard');
// })->middleware(['auth'])->name('dashboard');

require __DIR__.'/auth.php';
