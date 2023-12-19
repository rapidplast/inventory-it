<?php

namespace App\Imports;

use Maatwebsite\Excel\Facades\Excel;
use Maatwebsite\Excel\Concerns\ToModel;
use Illuminate\Http\Request;
use App\Models\Product;
use Carbon\Carbon;

class ProductImport implements ToModel
{
    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */
    public function model(array $row)
    {
        // Inisialisasi tahun_pembuatan dengan NULL
        $tahun_pembuatan = null;

        // Cek apakah ada data di kolom tahun_pembuatan dalam Excel
        if (!empty($row[4])) {
            // Konversi tanggal dari angka serial Excel ke format tanggal yang sesuai
            $tahun_pembuatan = Carbon::createFromTimestamp(($row[4] - 25569) * 86400)->format('Y-m-d');
        }

        // Menghitung usage_date
        $usage_date = Carbon::now(); // Tanggal sekarang
        $tahunPembuatan = Carbon::parse($tahun_pembuatan); // Tanggal tahun pembuatan
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

        return new Product([
            'no_serial' => $row[0],
            'no_asset' => $row[1],
            'no_equipment' => $row[2],
            'tipe' => $row[3],
            'tahun_pembuatan' => $tahun_pembuatan, 
            'usage_date' => $formattedDifference,
            'pengguna' => $row[6],
            'computer_name' => $row[7],
            'plant' => $row[8],
            'usage_record' => $row[9],
            'keterangan' => $row[10],
        ]);
    }

    public function importProducts(Request $request)
    {
        $file = $request->file('file');

        Excel::import(new ProductImport, $file);

        return redirect()->route('all.product')->withSuccess('Products imported successfully');
    }
}