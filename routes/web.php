<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\DropzoneController;
use App\Http\Controllers\EditorController;
use App\Http\Controllers\EmpController;
use App\Http\Controllers\EmployeeController;
use App\Http\Controllers\EmployerController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ImageController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\SellerController;
use App\Http\Controllers\StudentController;
use App\Models\Employer;
use Illuminate\Support\Facades\Route;

/* This Route for only Home Page */ 
Route::get('/',               [HomeController::class, 'home']);

/* This Route for Role redirects */ 
Route::get('/redirects',      [HomeController::class, 'index']);
Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', [HomeController::class, 'index'])->name('dashboard');

/* Admin sector's all route is here */
Route::middleware(['auth', 'authAdmin'])->group(function () { 
    Route::get('/admin-user-inert', [AdminController::class,    'insertUser'])->name('insertUser');
    Route::post('/admin-user-store',[AdminController::class,    'storeUser'])->name('adminUser');
    Route::get('/admin-user-list',  [AdminController::class,    'showUserList'])->name('adminUserList');
    Route::get('/add-employee',     [EmployeeController::class, 'addEmployee']);
    Route::get('/export-excel',     [EmployeeController::class, 'exportIntoExcel'])->name('excel');
    Route::get('/export-csv',       [EmployeeController::class, 'exportIntoCSV'])->name('csv');
    Route::get('/get-all-employee', [EmpController::class,      'getAllEmployees']);
    Route::get('/pdf',              [EmpController::class,      'downloadPDF'])->name('pdf');
    Route::get('/import-form',      [EmployeeController::class, 'importForm']);
    Route::post('/import',          [EmployeeController::class, 'import'])->name('import');
    Route::get('/resize-iamge',     [ImageController::class,    'resizeImage']);
    Route::post('/resize-image',    [ImageController::class,    'resizeImageSubmit'])->name('resize.image');
    Route::get('/dropzone',         [DropzoneController::class, 'dropzone']);
    Route::post('/dropzone-store',  [DropzoneController::class, 'dropZoneStore'])->name('dropzone.store');
    Route::get('/editor',           [EditorController::class,   'Editor']);

    //CRUD 
    Route::get('/add-student',        [StudentController::class, 'addStudent']);
    Route::post('/add-student',       [StudentController::class, 'storeStudent'])->name('student.store');
    Route::get('/all-student',        [StudentController::class, 'students']);
    Route::get('/edit-student/{id}',  [StudentController::class, 'editStudent']);
    Route::post('/update-student',    [StudentController::class, 'updateStudent'])->name('student.update');
    Route::get('/delete-student/{id}',[StudentController::class, 'deleteStudent']);

    //Auto complete search
    Route::get('/add-product',        [ProductController::class, 'addProduct']);
    Route::get('/search',             [ProductController::class, 'search']);
    Route::get('/auto-complete',      [ProductController::class, 'autoComplete'])->name('autocomplete');

    //Yajra
    Route::get('/employer', [EmployerController::class, 'index']);
});

/* Seller sector's all route is here */
Route::middleware(['auth', 'authSeller'])->group(function () {
    //
});


