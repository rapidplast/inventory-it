<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <link rel="icon" href="{{ asset('public/img/favico.png') }}" type="image/png">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>RapidPlastSystem</title>        

        <link href="{{ asset('public/backend') }}/css/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.24/css/dataTables.bootstrap4.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.7.0/css/buttons.dataTables.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

        <meta charset="utf-8" />
        <title>RapidPlast - Inventory System</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />
        <meta content="" name="keywords" />
        <meta content="" name="description" />
        <link href="{{ asset('public/css/app.css') }}" rel="stylesheet">
        <link href="{{ asset('public/css/bootstrap.min.css') }}" rel="stylesheet">
        <link href="{{ asset('public/css/style.css') }}" rel="stylesheet">

        <script src="{{ asset('public/js/app.js') }}"></script>
        <script src="{{ asset('public/js/main.js') }}"></script>

        <!-- Favicon -->
        <link href="public/img/favicon.png" rel="icon" />

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
        href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Poppins:wght@600;700&display=swap"
        rel="stylesheet"
        />

        <!-- Icon Font Stylesheet -->
        <link
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
        rel="stylesheet"
        />
        <link
        href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
        rel="stylesheet"
        />

        <!-- Libraries Stylesheet -->
        <link href="public/lib/animate/animate.min.css" rel="stylesheet" />
        <link href="public/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />

        <!-- Customized Bootstrap Stylesheet -->
        <link href="public/css/bootstrap.min.css" rel="stylesheet" />

        <!-- Template Stylesheet -->
        <link href="public/css/style.css" rel="stylesheet" />

        <style>
            .btn-primary {
                background-color: #a20d0d;
                border-color: #a20d0d;
            }

            .btn-primary:hover {
                background-color: #a20d0d;
                border-color: #a20d0d;
            }
            textarea {
                color: #000; 
            }
            .navbar-text {
                font-size: 18px; 
            }
        </style>
    </head>

    <body>
    <!-- Spinner Start -->
    <div>
        <div class="container-fluid bg-light p-0">
        <div class="row gx-0 d-none d-lg-flex">
            <div class="col-lg-7 px-5 text-start">
            <div
                class="h-100 d-inline-flex align-items-center border-start border-end px-3"
            >
                <small class="fa fa-phone-alt me-2"></small>
                <small>(031) 8436669</small>
            </div>
            <div class="h-100 d-inline-flex align-items-center border-end px-3">
                <small class="far fa-envelope-open me-2"></small>
                <small>it@rapidplast.id</small>
            </div>
            <div class="h-100 d-inline-flex align-items-center border-end px-3">
                <small class="far fa-clock me-2"></small>
                <small>24/7 hours services</small>
            </div>
            </div>
            <div class="col-lg-5 px-5 text-end">
            <div class="h-100 d-inline-flex align-items-center">
                <a class="btn btn-square border-end border-start" href=""
                ><i class="fab fa-facebook-f"></i
                ></a>
                <a class="btn btn-square border-end" href=""
                ><i class="fab fa-twitter"></i
                ></a>
                <a class="btn btn-square border-end" href=""
                ><i class="fab fa-linkedin-in"></i
                ></a>
                <a class="btn btn-square border-end" href=""
                ><i class="fab fa-instagram"></i
                ></a>
            </div>
            </div>
        </div>
        </div>
        <!-- Topbar End -->

        <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top px-4 px-lg-5 py-lg-0">
        <a href="index.php" class="navbar-brand d-flex align-items-center">
            <img src="{{ asset('public/img/logo_rapid.JPEG') }}" alt="Logo Rapid" class="logo-image me-3" width="110" height="60">
            <!-- <h1 class="m-0">
                Inventory System
            </h1> -->
        </a>
        <button
            type="button"
            class="navbar-toggler"
            data-bs-toggle="collapse"
            data-bs-target="#navbarCollapse"
        >
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="navbar-nav ms-auto py-3 py-lg-0">
            <a href="{{ route('landing') }}" class="nav-item nav-link{{ request()->routeIs('home') ? ' active' : '' }} navbar-text">Home</a>
            @auth
                {{-- CHANGE THIS --}}
                @can('isAdmin')
                    <a href="{{ route('add.product') }}" class="nav-item nav-link{{ request()->routeIs('add.product') ? ' active' : '' }} navbar-text">Add Product</a>
                @endcan
                <!-- <a href="{{ url('/import-products-form') }}" class="nav-item nav-link{{ request()->routeIs('import.products.form') ? ' active' : '' }}">Import Product</a> -->
                <a href="{{ route('all.product') }}" class="nav-item nav-link{{ request()->routeIs('all.product') ? ' active' : '' }} navbar-text">Detail Product</a>
                <a href="{{ route('disposal.product') }}" class="nav-item nav-link{{ request()->routeIs('disposal.product') ? ' active' : '' }} navbar-text">Disposal Product</a>
                <form method="POST" action="{{ route('logout') }}">
                    @csrf
                        <a class="nav-item nav-link navbar-text" href="route('logout')" onclick="event.preventDefault();showLogoutAlert(); this.closest('form').submit();">Logout</a>
                </form>
            @else
                <a href="#" class="nav-item nav-link navbar-text" onclick="showLoginAlert()">Add Product</a>
                <a href="#" class="nav-item nav-link navbar-text" onclick="showLoginAlert()">Detail Product</a>
                <a href="{{ route('login') }}" class="nav-item nav-link{{ request()->routeIs('login') ? ' active' : '' }} navbar-text">Login</a>
                
            @endauth
        </div>
        
    </nav>
    <!-- Navbar End -->
            <div id="layoutSidenav_content">
             @yield('content')
            

             <footer class="py-4 bg-light mt-auto">
                <div class="container-fluid">
                    <div class="d-flex align-items-center justify-content-between small">
                        <div>
                            <a href="#" style="color: #a20d0d;">Privacy Policy</a>
                            &middot;
                            <a href="#" style="color: #a20d0d;">Terms &amp; Conditions</a>
                        </div>
                    </div>
                </div>
            </footer>
            </div>
        </div>
        <script>
            document.addEventListener('DOMContentLoaded', function () {
                var menuItems = document.querySelectorAll('.navbar-nav .nav-item.nav-link');

                // Tambahkan event listener untuk setiap elemen menu
                menuItems.forEach(function (menuItem) {
                    menuItem.addEventListener('click', function () {
                        // Hapus kelas "active" dari semua elemen menu
                        menuItems.forEach(function (item) {
                            item.classList.remove('active');
                        });

                        // Tambahkan kelas "active" ke elemen menu yang diklik
                        menuItem.classList.add('active');
                    });
                });
            });
        </script>

                <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
                <script src="{{ asset('public/backend') }}/js/scripts.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
                <script src="{{ asset('public/backend') }}/assets/demo/chart-area-demo.js"></script>
                <script src="{{ asset('public/backend') }}/assets/demo/chart-bar-demo.js"></script>
    
                <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
                <script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
                <script src="https://cdn.datatables.net/buttons/1.7.0/js/dataTables.buttons.min.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
                <script src="https://cdn.datatables.net/buttons/1.7.0/js/buttons.html5.min.js"></script>
                <script src="https://cdn.datatables.net/buttons/1.7.0/js/buttons.colVis.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
                
                <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

                <script>
                    function showLogoutAlert() {
                        Swal.fire({
                            title: 'You are logged out of this account',
                            text: 'Logout Successful!',
                            icon: 'success',
                            timer: 2500, // Waktu dalam milidetik (misalnya, 2000ms = 2 detik)
                            timerProgressBar: true, // Menampilkan progress bar waktu
                            showConfirmButton: false // Menyembunyikan tombol OK
                        }).then(() => {
                            // Setelah selesai, submit form logout
                            document.querySelector('form[action="/logout"]').submit();
                        });
                    }
                </script>
        @yield('script')
    </body>
</html>