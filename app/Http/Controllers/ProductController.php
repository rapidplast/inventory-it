<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use RealRashid\SweetAlert\Facades\Alert;
use Maatwebsite\Excel\Facades\Excel;
use App\Imports\ProductImport;
use Carbon\Carbon;


class ProductController extends Controller
{
    public function store(Request $request)
    {
        $noSerial = $request->input('no_serial');
        $noAsset = $request->input('no_asset');
        $noEquipment = $request->input('no_equipment');

        $existingData = Product::where('no_serial', $noSerial)
            ->where('no_asset', $noAsset)
            ->where('no_equipment', $noEquipment)
            ->first();

        if ($existingData) {
            return redirect()->route('add.product')->withError('Data sudah terdaftar');
        }

        $data = new Product;
        $data->no_serial = $noSerial;
        $data->no_asset = $noAsset;
        $data->no_equipment = $noEquipment;
        $data->tipe = $request->tipe;
        $data->tahun_pembuatan = $request->tahun_pembuatan;
        $data->pengguna = $request->pengguna;
        $data->computer_name = $request->computer_name;
        $data->plant = $request->plant;
        $data->usage_record = $request->usage_record;
        $data->keterangan = $request->keterangan;
        
        // Menghitung usage_date
        $usage_date = Carbon::now(); // Tanggal sekarang
        $tahunPembuatan = Carbon::parse($request->tahun_pembuatan); // Tanggal tahun pembuatan
        $dateDifference = $usage_date->diff($tahunPembuatan); // Menghitung selisih tanggal lengkap
        
        // Inisialisasi string untuk menampung hasil perhitungan
        $formattedDifference = '';
    
        // Tambahkan tahun jika lebih dari 0
        if ($dateDifference->y > 0) {
            $formattedDifference .= $dateDifference->y . ' Tahun, ';
        }
    
        // Tambahkan bulan jika lebih dari 0
        if ($dateDifference->m > 0) {
            $formattedDifference .= $dateDifference->m . ' Bulan, ';
        }
    
        // Tambahkan hari jika lebih dari 0
        if ($dateDifference->d > 0) {
            $formattedDifference .= $dateDifference->d . ' Hari ';
        }
    
        // Hapus spasi ekstra dari akhiran
        $formattedDifference = rtrim($formattedDifference);
    
        // Tetapkan hasil perhitungan selisih ke dalam atribut usage_date
        $data->usage_date = $formattedDifference;
    
        // Simpan data ke database
        if ($data->save()) {
            return redirect()->route('add.product')->withSuccess('Product added successfully');
        } else {
            return redirect()->route('add.product')->withError('Failed to add product');
        }
    }       

    public function allProduct()
    {
        $products = Product::where('status', 'Aktif')
                            ->orWhere('status', 'Tidak Aktif')
                            ->get();
        return view('Admin.all_product', compact('products'));
    }

    public function editProduct($id)
    {
        $product = Product::find($id);
        return view('Admin.edit_product', compact('product'));
    }

    public function updateProduct(Request $request, $id)
    {
        $product = Product::find($id);

        if ($product->no_serial == $request->input('no_serial') && $product->no_asset == $request->input('no_asset') && $product->no_equipment == $request->input('no_equipment') && $product->tipe == $request->input('tipe') && $product->tahun_pembuatan == $request->input('tahun_pembuatan') && $product->pengguna == $request->input('pengguna') && $product->computer_name == $request->input('computer_name') && $product->plant == $request->input('plant') && $product->usage_record == $request->input('usage_record') && $product->keterangan == $request->input('keterangan')) {
            return redirect()->route('edit.product', ['id' => $product->id])->with('noChanges', 'Tidak ada perubahan data');
        }

        $product->no_serial = $request->input('no_serial');
        $product->no_asset = $request->input('no_asset');
        $product->no_equipment = $request->input('no_equipment');
        $product->tipe = $request->input('tipe');
        $product->tahun_pembuatan = $request->input('tahun_pembuatan');
        
        // Menghitung usage_date
        $usage_date = Carbon::now(); // Tanggal sekarang
        $tahunPembuatan = Carbon::parse($request->tahun_pembuatan); // Tanggal tahun pembuatan
        $difference = $usage_date->diff($tahunPembuatan); // Menghitung selisih

        // Inisialisasi string untuk menampung hasil perhitungan
        $formattedDifference = '';

        // Tambahkan tahun jika lebih dari 0
        if ($difference->y > 0) {
            $formattedDifference .= $difference->y . ' Tahun, ';
        }

        // Tambahkan bulan jika lebih dari 0
        if ($difference->m > 0) {
            $formattedDifference .= $difference->m . ' Bulan, ';
        }

        // Tambahkan hari jika lebih dari 0
        if ($difference->d > 0) {
            $formattedDifference .= $difference->d . ' Hari ';
        }

        // Hapus spasi ekstra dari akhiran
        $formattedDifference = rtrim($formattedDifference);

        $product->usage_date = $formattedDifference;

        $product->pengguna = $request->input('pengguna');
        $product->computer_name = $request->input('computer_name');
        $product->plant = $request->input('plant');
        $product->usage_record = $request->input('usage_record');
        $product->keterangan = $request->input('keterangan');
        $product->save();

        if ($product) {
            return redirect()->route('all.product')->withSuccess('Product updated successfully');
        } else {
            return redirect()->route('all.product')->withError('Failed to update product');
        }
    }

    public function updateStatus(Request $request, $id)
    {
        $product = Product::find($id);
        $product->status = $request->status;
        $product->save();

        return redirect()->route('all.product')->withSuccess('Status updated successfully');
    }


    public function deleteProduct($id)
    {
        $product = Product::find($id);
        $product->delete();

        return redirect()->route('all.product')->withSuccess('Product deleted successfully');
    }

    public function moveToDisposal(Request $request, $id)
    {
        $product = Product::find($id);

        if ($product) {
            // Lakukan pemindahan data ke disposisi di sini
            $product->status = 'Dalam Disposisi';
            $product->save();

            return redirect()->route('disposal.product')->withSuccess('Product moved to Disposal successfully');
        }

        return redirect()->route('all.product')->withError('Product not found');
    }

    public function disposal()
    {
        $disposalProducts = Product::whereIn('status', ['Disposal'])->get();
        
        return view('Admin.disposal', compact('disposalProducts'));
    }


    public function importProducts(Request $request)
    {
        $file = $request->file('file');

        Excel::import(new ProductImport, $file, null, \Maatwebsite\Excel\Excel::XLSX);

        return redirect()->route('all.product')->withSuccess('Products imported successfully');
    }

    public function showImportForm()
    {
        return view('Admin.import_product'); // Ini adalah nama blade view yang akan Anda buat.
    }

}
