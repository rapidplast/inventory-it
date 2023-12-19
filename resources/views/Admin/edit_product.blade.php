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
                    <div class="card-header"><h2 class="text-center font-weight-light my-4"><strong>Edit Product</strong></h2></div>
                    <div class="card-body">
                    @if(session('hasChanges'))
                        @if(session('hasChanges') == true)
                            <div class="alert alert-success">
                                {{ session('success') }}
                            </div>
                        @else
                            <div class="alert alert-info">
                                {{ session('info') }}
                            </div>
                        @endif
                    @endif
                        <form method="POST" action="{{ route('update.product', ['id' => $product->id]) }}">
                            @csrf
                            @method('PUT')
                            <div class="form-row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="small mb-1" for="inputFirstName" style="color: #000; font-size: 1.1em;">No Serial</label>
                                        <input class="form-control py-4" name="no_serial" type="text" value="{{ $product->no_serial }}" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="small mb-1" for="inputFirstName" style="color: #000; font-size: 1.1em;">No Asset</label>
                                        <input class="form-control py-4" name="no_asset" type="text" value="{{ $product->no_asset }}" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="small mb-1" for="inputLastName" style="color: #000; font-size: 1.1em;">No Equipment</label>
                                        <input class="form-control py-4" name="no_equipment" type="text" value="{{ $product->no_equipment }}" />
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="small mb-1" for="inputLastName" style="color: #000; font-size: 1.1em;">Tipe</label>
                                        <input class="form-control py-4" name="tipe" type="text" value="{{ $product->tipe }}" />
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="small mb-1" for="inputLastName" style="color: #000; font-size: 1.1em;">Invoice Date</label>
                                        <input class="form-control py-4" name="tahun_pembuatan" type="date" value="{{ $product->tahun_pembuatan }}" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="small mb-1" for="inputLastName" style="color: #000; font-size: 1.1em;">Tanggal Penggunaan</label>
                                        <input class="form-control py-4" name="usage_date" type="date" value="{{ $product->usage_date }}" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="small mb-1" for="inputLastName" style="color: #000; font-size: 1.1em;">Pengguna</label>
                                        <input class="form-control py-4" name="pengguna" type="text" value="{{ $product->pengguna }}" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="small mb-1" for="inputLastName" style="color: #000; font-size: 1.1em;">Computer Name</label>
                                        <input class="form-control py-4" name="computer_name" type="text" value="{{ $product->computer_name }}" />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="small mb-1" for="exampleFormControlTextarea1" style="color: #000; font-size: 1.1em;">Plant</label>
                                        <select class="form-control" name="plant" rows="3" style="height: 50px;">
                                            @if ($product->plant)
                                                <option value="{{ $product->plant }}" selected>{{ $product->plant }}</option>
                                            @endif
                                            <option value="">Pilih Plant</option>
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
                                        <textarea class="form-control" id="usage_record" name="usage_record" rows="3">{{ $product->usage_record }}</textarea>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="small mb-1" for="exampleFormControlTextarea1" style="color: #000; font-size: 1.1em;">Keterangan</label>
                                        <textarea class="form-control" id="keterangan" name="keterangan" rows="3">{{ $product->keterangan }}</textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group mt-4 mb-0 text-center">
                                <button class="btn btn-primary">Update</button>
                                <a href="{{ route('all.product') }}" class="btn btn-secondary">Cancel</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<!-- SweetAlert script -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
    // SweetAlert for update success
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
    @endif

    // SweetAlert for update failure
    @if(session('failure'))
        Swal.fire({
            icon: 'error',
            title: 'Error',
            text: '{{ session("failure") }}',
            showConfirmButton: true
        });
    @endif

    // SweetAlert for delete confirmation
    document.querySelector('form').addEventListener('submit', function(e) {
        e.preventDefault();
        Swal.fire({
            icon: 'warning',
            title: 'Are you sure?',
            text: 'You are about to update this product',
            showCancelButton: true,
            confirmButtonText: 'Update',
            cancelButtonText: 'Cancel',
        }).then((result) => {
            if (result.isConfirmed) {
                this.submit();
            }
        });
    });
</script>
@endsection