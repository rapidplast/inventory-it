@extends('layouts.admin_master')

@section('content')
<head>
    <link rel="icon" href="{{ asset('public/img/favico.png') }}" type="image/png">
</head>
<div class="card mb-4">
    <div class="card-header">
        <span style="color: #000;"></span> 
        <div class="text-center"> <!-- Menambahkan class "text-center" untuk mengatur ke tengah -->
            <h1 class="my-1" style="color: #000;">Disposal Products</h1> <!-- Judul halaman -->
        </div>
    </div>
    <div class="card-body">
    @if(session('success') && session('hasChanges'))
            <div class="alert alert-success" role="alert">
                {{ session('success') }}
            </div>
        @endif
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
            <thead>
                <tr>
                    <th style="color: #000;">No.</th>
                    <th style="color: #000;">No Serial</th>
                    <th style="color: #000;">No Asset</th>
                    <th style="color: #000;">No Equipment</th>
                    <th style="color: #000;">Tipe</th>
                    <th style="color: #000;">Invoice Date</th>
                    <th style="color: #000;">Year of Service</th>
                    <th style="color: #000;">Pengguna</th>
                    <th style="color: #000;">Computer Name</th>
                    <th style="color: #000;">Plant</th>
                    <th style="color: #000;">Record Pemakaian</th> 
                    <th style="color: #000;">Keterangan</th>
                    <th style="color: #000; width: 5%;">Status</th>
                    {{-- CHANGE THIS --}}
                    @can('isAdmin')<th style="color: #000; width: 60px;">Action</th>@endcan
                </tr>
            </thead>
            <tbody>
                @php $counter = 1 @endphp
                @foreach($disposalProducts as $product)
                <tr>
                <td style="color: #000; width: 30px; text-align: center;">{{ $counter }}</td>
                    <td style="color: #000; width: 8%;">{{ $product->no_serial }}</td>
                    <td style="color: #000; width: 8%;">{{ $product->no_asset }}</td>
                    <td style="color: #000; width: 8%;">{{ $product->no_equipment }}</td>
                    <td style="color: #000; width: 10%;">{{ $product->tipe }}</td>
                    <td style="color: #000; text-align: center; width: 8%;">{{ $product->tahun_pembuatan }}</td>
                    <td style="color: #000; width: 8%;">{{ $product->usage_date }}</td>
                    <td style="color: #000; width: 10%;">{!! nl2br(e($product->pengguna)) !!}</td>
                    <td style="color: #000; width: 10%;">{!! nl2br(e($product->computer_name)) !!}</td>
                    <td style="color: #000; width: 30px; text-align: center;">{{ $product->plant }}</td>
                    <td style="color: #000; width: 150px;">{!! nl2br(e($product->usage_record)) !!}</td>
                    <td style="color: #000; width: 20%;">{!! nl2br(e($product->keterangan)) !!}</td>
                    <td style="color: #000; text-align: center; font-family: 'Tahoma'; margin-top: 6px;">
                        <span>{{ $product->status }}</span>
                        <br>
                        <span style="color: gray; font-size: 12px; font-style: italic; margin-top: 15px; margin-bottom: 5px;">
                             {{ $product->updated_at }}
                        </span>
                    </td>
                    {{-- CHANGE THIS --}}
                    @can('isAdmin')
                    <td style="text-align: center;">
                        <form action="{{ route('delete.product', ['id' => $product->id]) }}" method="POST" class="d-inline" id="deleteForm{{ $product->id }}">
                            @csrf
                            @method('DELETE')
                            <button type="button" class="btn btn-sm btn-danger btn-action" onclick="confirmDelete({{ $product->id }})" style="border-radius: 4px; padding: 7px; margin-top: 15px; margin-bottom: 10px;">Delete</button>
                        </form>
                    </td>
                    @endcan
                </tr>
                @php $counter++ @endphp
                @endforeach
            </tbody>
            </table>
        </div>
    </div>
</div>
@endsection

@section('script')
<link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
<style>
    .custom-dropdown {
        position: relative;
        display: inline-block;
    }
    .custom-dropdown select {
    
        background-color: #fff;
        border: 1px solid #ccc;
        padding: 8px;
        border-radius: 4px;
        width: 100%;
    }
    .btn-action {
        width: 80px; /* Adjust the size as needed */
    }
    .dataTables_paginate .paginate_button.previous,
    .dataTables_paginate .paginate_button.next {
        color: #a20d0d !important;
    }
    .dataTables_paginate .paginate_button.current {
        color: #000 !important;
    }
    .wide-column {
    width: 300px; /* Sesuaikan lebar kolom sesuai kebutuhan */
    white-space: normal; /* Kembali ke pengaturan normal pemisahan baris */
    }
    /* Tambahkan garis batas ke tabel DataTables */
    #dataTable {
        border-collapse: collapse;
        border-spacing: 0;
        width: 100%;
        border: 1px solid #ddd;
    }

    #dataTable th, #dataTable td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
    }
    #dataTable thead th {
        background-color: #f9f6f2; 
    }
    #dataTable td {
    font-size: 15px; 
    }
    #dataTable th {
    font-size: 16px; 
    vertical-align: middle;
    text-align: center;
    }
</style>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
    // SweetAlert for update success
    @if(session('success'))
        Swal.fire({
            icon: 'success',
            title: 'Success',
            text: '{{ session("success") }}',
            showConfirmButton: true
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

    function confirmDelete(productId) {
        Swal.fire({
            icon: 'warning',
            title: 'Are you sure?',
            text: 'You are about to delete this product',
            showCancelButton: true,
            confirmButtonText: 'Delete',
            cancelButtonText: 'Cancel',
        }).then((result) => {
            if (result.isConfirmed) {
                document.getElementById('deleteForm' + productId).submit();
            }
        });
    }
</script>
<script>
   $(document).ready(function() {
       $('#dataTable').DataTable({
           columnDefs: [
               { targets: [9], searchable: false, orderable: false } // Adjusted the target column index
           ],
           pageLength: 100,
           lengthMenu: [100, 200, 300, 500, -1],
           dom: 'lBfrtip',
           buttons: [
               {
                   extend: 'copyHtml5',
                   exportOptions: {
                       modifier: {
                           page: 'current'
                       },
                       columns: [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 ]
                   }
               },
               {
                   extend: 'excelHtml5',
                   exportOptions: {
                       modifier: {
                           page: 'current'
                       },
                       columns: [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
                   }
               },
               {
                   extend: 'pdfHtml5',
                   exportOptions: {
                       modifier: {
                           page: 'current'
                       },
                       columns: [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
                   }
               },
               'colvis'
           ], 
       });
   });
</script>
@endsection
