@extends('layouts.admin_master')

@section('content')
<head><link rel="icon" href="asset/public/img/favico.png" type="image/png"></head>
<main>
    <div class="container-fluid">
    <h1 class="mt-4"></i>Dashboard</h1>
        <ol class="breadcrumb mb-4">
            <li class="breadcrumb-item active"></li>
        </ol>
        <div class="row">
            <div class="col-xl-3 col-md-6">
                <div class="card bg-primary text-white mb-4">
                <div class="card-body"><i class="fas fa-plus"></i> Add New Product</div>
                    <div class="card-footer d-flex align-items-center justify-content-between">
                        <a class="small text-white stretched-link" href="{{ route('add.product') }}">View Details</a>
                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                    </div>
                </div>
            </div>
            
            <div class="col-xl-3 col-md-6">
                <div class="card bg-primary text-white mb-4">
                <div class="card-body"><i class="fas fa-file-alt"></i> Products Report</div>
                    <div class="card-footer d-flex align-items-center justify-content-between">
                        <a class="small text-white stretched-link" href="{{ route('all.product') }}">View Details</a>
                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                    </div>
                </div>
            </div>
            
        </div>
        
        <div class="row">
            <div class="col-xl-6">
                <div class="card mb-4">
                    <div class="card-header">
                        <i class="fas fa-chart-area mr-1"></i>
                        Area Chart Example
                    </div>
                    <div class="card-body"><canvas id="myAreaChart" width="100%" height="40"></canvas></div>
                </div>
            </div>
            <div class="col-xl-6">
                <div class="card mb-4">
                    <div class="card-header">
                        <i class="fas fa-chart-bar mr-1"></i>
                        Bar Chart Example
                    </div>
                    <div class="card-body"><canvas id="myBarChart" width="100%" height="40"></canvas></div>
                </div>
            </div>
        </div>
        <div class="card mb-4">
            <div class="card-header">
                <i class="fas fa-table mr-1"></i>
                DataTable Example
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>No Serial</th>
                                <th>No Asset</th>
                                <th>No Equipment</th>
                                <th>Tipe</th>
                                <th>Tahun Pembuatan</th>
                                <th>Pengguna</th>
                                <th>Plant</th>
                                <th>keterangan</th>
                            </tr>
                        </thead>
                        
                        <tbody>
                            <tr>
                                <td>111-222-333</td>
                                <td>123-456-789</td>
                                <td>000-000-000</td>
                                <td>Laptop Lenovo</td>
                                <td>22-07-2011</td>
                                <td>Sari</td>
                                <td>Plant 2</td>
                                <td>LCD mati</td>
                            </tr>
                            <tr>
                                <td>112-223-334</td>
                                <td>123-456-789</td>
                                <td>000-000-000</td>
                                <td>Laptop ASUS</td>
                                <td>11-07-2013</td>
                                <td>Budi</td>
                                <td>JDO</td>
                                <td>keyboard susah</td>
                            </tr>
                            <tr>
                                <td>113-224-335</td>
                                <td>123-456-789</td>
                                <td>000-000-000</td>
                                <td>Laptop ACER</td>
                                <td>08-05-2010</td>
                                <td>Lula</td>
                                <td>Kimpai</td>
                                <td>bagus</td>
                            </tr>
                            
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</main>
@endsection