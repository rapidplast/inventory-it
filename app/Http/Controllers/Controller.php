<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Validation\ValidationException;

class Controller extends BaseController
{
    public function store(Request $request)
    {
        try {
            $validatedData = $request->validate([
                'price' => 'required|numeric',
                // Tambahkan aturan validasi lainnya untuk field yang tersisa
            ]);

            $price = $validatedData['price'];

            // Lanjutkan dengan menyimpan data ke database, pastikan untuk menyertakan nilai $price dalam pernyataan insert
            // ...

        } catch (ValidationException $e) {
            // Tangani kegagalan validasi
            return redirect()->back()->withErrors($e->errors())->withInput();
        }
    }
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
}
