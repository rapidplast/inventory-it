@extends('layouts.admin_master')

@section('content')
<head>
    <link rel="icon" href="{{ asset('public/img/favico.png') }}" type="image/png">
</head>
<main>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-7">
                <div class="card shadow-lg border-0 rounded-lg mt-5">
                    <div class="card-header"><h2 class="text-center font-weight-light my-4"><strong>Add New Product</strong></h2></div>
                    <div class="card-body">
                        <form method="POST" action="{{ url('/insert-product') }}" enctype="multipart/form-data">
                        @csrf
                            <div class="form-row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="small mb-1" for="inputFirstName" style="color: #000; font-size: 1.1em;">No Serial</label>
                                        <input class="form-control py-4" name="no_serial" type="text" placeholder="" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="small mb-1" for="inputFirstName" style="color: #000; font-size: 1.1em;">No Asset</label>
                                        <input class="form-control py-4" name="no_asset" type="text" placeholder="" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="small mb-1" for="inputLastName" style="color: #000; font-size: 1.1em;">No Equipment</label>
                                        <input class="form-control py-4" name="no_equipment" type="text" placeholder="" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="small mb-1" for="inputLastName" style="color: #000; font-size: 1.1em;">Tipe</label>
                                        <input class="form-control py-4" name="tipe" type="text" placeholder="" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="small mb-1" for="inputLastName" style="color: #000; font-size: 1.1em;">Invoice Date</label>
                                        <input class="form-control py-4" name="tahun_pembuatan" type="date" placeholder="" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="small mb-1" for="inputLastName" style="color: #000; font-size: 1.1em;">Year of Service</label>
                                        <input class="form-control py-4" name="usage_date" type="text" placeholder="" readonly/>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="small mb-1" for="inputLastName" style="color: #000; font-size: 1.1em;">Pengguna</label>
                                        <textarea class="form-control py-4" name="pengguna" style="width: 100%; height: 50px; overflow: hidden; padding-top: 10px !important;" rows="3" optional></textarea>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="small mb-1" for="inputLastName" style="color: #000; font-size: 1.1em;">Computer Name</label>
                                        <textarea class="form-control py-4" name="computer_name" style="width: 100%; height: 50px; overflow: hidden; padding-top: 10px !important;" rows="3" optional></textarea>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="small mb-1" for="exampleFormControlTextarea1" style="color: #000; font-size: 1.1em;">Plant</label>
                                        <select class="form-control" name="plant" rows="3" style="height: 50px;">
                                            <option value="" selected>Pilih Plant dibawah ini..</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                            <option value="JDO">JDO</option> 
                                            <option value="Kimpai">Kimpai</option> 
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="small mb-1" for="exampleFormControlTextarea1" style="color: #000; font-size: 1.1em;">Record Pemakaian</label>
                                        <textarea class="form-control" id="usage_record" name="usage_record" rows="3" optional></textarea>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="small mb-1" for="exampleFormControlTextarea1" style="color: #000; font-size: 1.1em;">Keterangan</label>
                                        <textarea class="form-control" id="keterangan" name="keterangan" rows="3" optional></textarea>
                                    </div>
                                </div>

                                <div class="col-md-12 text-center"> <!-- Ganti col-md-12 menjadi text-center -->
                                    <div class="form-group">
                                    <button class="btn btn-primary" style="margin-left: auto; margin-right: auto; display: block;">Submit</button>
                                    </div>
                                </div>

                            </div>
                        </form>
                        <!-- <form method="POST" action="{{ url('/import-products') }}" enctype="multipart/form-data">
                            @csrf
                            <div class="form-group">
                                <label for="import-file" style="color: #000;">Import Excel File:</label>
                                <input type="file" name="file" id="import-file">
                            </div>
                            <div class="col-md-12 text-center">
                                <div class="form-group">
                                    <button class="btn btn-primary" style="margin-left: auto; margin-right: auto; display: block;">Import</button>
                                </div>
                            </div>
                        </form> -->
                        <div class="text-center" style="margin-top: 10px; margin-bottom: 10px;">
                            <span class="text-center gray-text">Apakah anda ingin import product dari excel?</span>
                            <a href="{{ url('/import-products-form') }}" class="signup-image-link">Klik disini</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<style>
.gray-text {
    color: #808080; /* Warna abu-abu */
    margin-right: 5px; /* Jarak ke kanan untuk "Klik disini" */
}

.signup-image-link {
    color: #a20d0d; /* Warna merah tua */
    text-decoration: none; /* Menghilangkan garis bawah default dari tautan */
}
.signup-image-link:hover {
    color: #a20d0d; /* Warna merah saat dihover */
}
.text-center {
    text-align: center; /* Mengatur teks menjadi center */
}
</style>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
    @if(session('success'))
        Swal.fire({
            icon: 'success',
            title: 'Success',
            text: '{{ session("success") }}',
            showConfirmButton: true
        }).then((result) => {
            if (result.isConfirmed) {
                window.location.href = "{{ route('all.product') }}";
            }
        });
    @elseif(session('error'))
        Swal.fire({
            icon: 'error',
            title: 'Error',
            text: '{{ session("error") }}',
            showConfirmButton: true
        });
    @endif
</script>

@endsection