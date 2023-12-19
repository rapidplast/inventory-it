@extends('layouts.admin_master')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-7">
                <div class="card shadow-lg border-0 rounded-lg mt-5">
                    <div class="card-header">
                        <h2 class="text-center font-weight-light my-4">
                            <strong>Import Products</strong>
                        </h2>
                    </div>
                    <div class="card-body">
                        <form method="POST" action="{{ route('import.products') }}" enctype="multipart/form-data">
                            @csrf
                            <div class="text-center" style="margin-top: 15px;">
                                <label for="import-file">Import Excel File:</label>
                                <input type="file" name="file" id="import-file">
                            </div>
                            <div class="text-center" style="margin-top: 15px; margin-bottom: 20px;">
                                <button type="submit" class="btn btn-primary">Import</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
