<!DOCTYPE html>
<html lang="en">
  <head>
  <link rel="icon" href="public/img/favico.png" type="image/png">
    <meta charset="utf-8" />
    <title>RapidPlast - Inventory System</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta content="" name="keywords" />
    <meta content="" name="description" />
    <!-- SweetAlert -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <link href="{{ asset('public/css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('public/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('public/css/style.css') }}" rel="stylesheet">

    <script src="{{ asset('public/js/app.js') }}"></script>
    <script src="{{ asset('public/js/main.js') }}"></script>

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <!-- Favicon -->
    <link href="public/img/favicon.ico" rel="icon" />

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
        background-color: #a20d0d !important;
        border-color: #a20d0d !important;
      }
      .team-item .img-fluid {
        width: 500px; /* Maksimum lebar gambar sesuai dengan ukuran parent element */
        height: 500px; /* Otomatis mengatur tinggi agar gambar tetap proporsional */
      }
      .max-img-size {
        max-width: 100%; /* Atur maksimum lebar gambar agar sesuai dengan parent element */
        height: auto; /* Biarkan tinggi gambar menyesuaikan agar gambar tetap proporsional */
      }
      .custom-marquee {
        font-family: 'Arial Black', sans-serif; /* Ganti dengan jenis font yang Anda inginkan */
        font-size: 18px; /* Sesuaikan ukuran font */
        color: #333; /* Sesuaikan warna font */
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5); /* Efek bayangan teks */
        white-space: nowrap; 
        width: 120%;
      }
      .dropdown-menu {
        font-family: 'Roboto', sans-serif; /* Ganti dengan jenis font yang Anda inginkan */
        font-size: 16px; /* Sesuaikan ukuran font */
      }
      .nav-item.dropdown .dropdown-menu {
          text-align: center;
          width: 100%;
      }
      .dropdown-item:active {
        background-color: #a20d0d;
      }
      .navbar-text {
        font-size: 18px; 
      }
    </style>
  </head>

  <body>
    <!-- Spinner Start -->
    <div
      id="spinner"
      class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center"
    >
      <div class="spinner-grow text-primary" role="status"></div>
    </div>
    <!-- Spinner End -->

    <!-- Topbar Start -->
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
        <img src="{{ asset('public/img/logo_rapid.jpeg') }}" alt="Logo Rapid" class="logo-image me-3" width="110" height="60">
        <div>
          <marquee class="custom-marquee" direction="right" onmouseover="this.stop()" onmouseout="this.start()">
            Selamat datang di website Inventory Management System
          </marquee>
        </div>
    </a>
    <button
        type="button"
        class="navbar-toggler"
        data-bs-toggle="collapse"
        data-bs-target="#navbarCollapse"
    >
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarCollapse">
        <div class="navbar-nav ms-auto py-4 py-lg-0">
            <a href="{{ route('landing') }}" class="nav-item nav-link active navbar-text">Home</a>
            @auth <!-- Cek jika pengguna sudah login -->
                {{-- CHANGE THIS --}}
                @can('isAdmin')
                  <a href="{{ route('add.product') }}" class="nav-item nav-link{{ request()->routeIs('add.product') ? ' active' : '' }} navbar-text">Add Product</a>
                @endcan

                <a href="{{ route('all.product') }}" class="nav-item nav-link{{ request()->routeIs('all.product') ? ' active' : '' }} navbar-text">Detail Product</a>
                <form method="POST" action="{{ route('logout') }}">
                    @csrf
                        <a class="nav-item nav-link navbar-text" href="route('logout')" onclick="event.preventDefault(); this.closest('form').submit();">Logout</a>
                </form>

            @else <!-- Jika pengguna belum login, tampilkan pesan -->
                <a href="#" class="nav-item nav-link navbar-text" onclick="showLoginAlert()">Add Product</a>
                <a href="#" class="nav-item nav-link navbar-text" onclick="showLoginAlert()">Detail Product</a>
                <a href="{{ route('login') }}" class="nav-item nav-link navbar-text">Login</a>
            @endauth
        </div>
    </div>

</nav>
<!-- Navbar End -->


    <!-- Carousel Start -->
    <div class="container-fluid p-0 mb-5 wow fadeIn" data-wow-delay="0.1s">
      <div id="header-carousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="w-100 max-img-size" src="{{ asset('public/img/rpd1.jpeg') }}" alt="Image" />
            <div class="carousel-caption">
              <div class="container">
                <div class="row justify-content-center">
                  <div class="col-12 col-lg-10">
                    <h5
                      class="text-light text-uppercase mb-3 animated slideInDown"
                    >
                      Welcome to Rapid Plast 
                    </h5>
                    <h1 class="display-2 text-light mb-3 animated slideInDown">
                      Inventory Management System
                    </h1>
                    <ol class="breadcrumb mb-4 pb-2">
                      <li class="breadcrumb-item fs-5 text-light">
                        Persue For Excellence
                      </li>
                    </ol>
                    <a href="" class="btn btn-primary py-3 px-5 background-color: #a20d0d;"
                      >More Details</a
                    >
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="w-100" src="{{ asset('public/img/rpd2.jpeg') }}" alt="Image" />
            <div class="carousel-caption">
              <div class="container">
                <div class="row justify-content-center">
                  <div class="col-12 col-lg-10">
                    <h5
                      class="text-light text-uppercase mb-3 animated slideInDown"
                    >
                      Welcome to RapidPlast
                    </h5>
                    <h1 class="display-2 text-light mb-3 animated slideInDown">
                      Inventory Management System
                    </h1>
                    <ol class="breadcrumb mb-4 pb-2">
                      <li class="breadcrumb-item fs-5 text-light">
                        Persue For Excellence
                      </li>
                    </ol>
                    <a href="" class="btn btn-primary py-3 px-5"
                      >More Details</a
                    >
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <button
          class="carousel-control-prev"
          type="button"
          data-bs-target="#header-carousel"
          data-bs-slide="prev"
        >
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button
          class="carousel-control-next"
          type="button"
          data-bs-target="#header-carousel"
          data-bs-slide="next"
        >
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
    </div>
    <!-- Carousel End -->

    <!-- About Start -->
    <div class="container-xxl py-5">
      <div class="container">
        <div class="row g-5">
          <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
            <div
              class="position-relative overflow-hidden ps-5 pt-5 h-100"
              style="min-height: 400px"
            >
              <img
                class="position-absolute w-95 h-80"
                src="public/img/rapid_nobg.png"
                alt=""
                style="object-fit: cover"
              />
            </div>
          </div>
          <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
            <div class="h-100">
              <div class="border-start border-5 ps-4 mb-5" >
                <!-- <h6 class="text-body text-uppercase mb-2">About Us</h6> -->
                <h1 class="display-6 mb-0">
                  About Us
                </h1>
              </div>
              <p>
              PT. Rapid Plast Indonesia adalah perusahaan yang bergerak dibidang plastik 
              Rapid Plast Indonesia didirikan sebagai PT Rexplast pada tanggal 1 Agustus 1992 
              dimana pengoperasian Pabrik Pertama dimulai pada bulan Februari 1993.
              </p>
              <p class="mb-4">
              PT. Rapid Plast adalah anak syarikat Dynapack Asia. Ia memberi tumpuan kepada pengguna 
              di rantau timur Indonesia. Syarikat itu menghasilkan pelbagai jenis pembungkusan plastik 
              dan berus gigi dan merupakan satu-satunya proses di seluruh Dynapack Asia untuk menjalankan 
              sebuah kilang pembuatan untuk tiub plastik di Cikarang.
              </p>
              <div class="border-top mt-4 pt-4">
                <div class="row g-4">
                  <div class="col-sm-4 d-flex wow fadeIn" data-wow-delay="0.1s">
                    <i class="fas fa-check fa-2x text-danger flex-shrink-0 me-3"></i>
                    <h6 class="mb-0">Ontime at services</h6>
                  </div>
                  <div class="col-sm-4 d-flex wow fadeIn" data-wow-delay="0.3s">
                    <i class="fas fa-check fa-2x text-danger flex-shrink-0 me-3"></i>
                    <h6 class="mb-0">24/7 hours services</h6>
                  </div>
                  <div class="col-sm-4 d-flex wow fadeIn" data-wow-delay="0.5s">
                    <i class="fas fa-check fa-2x text-danger flex-shrink-0 me-3"></i>
                    <h6 class="mb-0">Verified professionals</h6>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- About End -->

    <!-- Team Start -->
    <div class="container-xxl py-5">
      <div class="container">
        <div class="row g-5 align-items-end mb-5">
          <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
            <div class="border-start border-5 ps-4">
              <h6 class="text-body text-uppercase mb-2">Documentation</h6>
              <h1 class="display-6 mb-0">Our Expert Documentation</h1>
            </div>
          </div>
          <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.3s">
            <!-- <p class="mb-0">
              Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit. Aliqu
              diam amet diam et eos. Clita erat ipsum et lorem et sit, sed stet
              lorem sit clita duo justo magna dolore erat amet
            </p> -->
          </div>
        </div>
        <div class="row g-4">
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
            <div class="team-item position-relative">
              <img class="img-fluid" src="public/img/rapid2.jpg" alt="" />
              <!-- <div class="team-text bg-white p-4">
                <h5>Full Name</h5>
                <span>Engineer</span>
              </div> -->
            </div>
          </div>
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
            <div class="team-item position-relative">
              <img class="img-fluid" src="public/img/rapid3.jpg" alt="" />
              <!-- <div class="team-text bg-white p-4">
                <h5>Full Name</h5>
                <span>Engineer</span>
              </div> -->
            </div>
          </div>
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
            <div class="team-item position-relative">
              <img class="img-fluid" src="public/img/rapid5.jpg" alt="" />
              <!-- <div class="team-text bg-white p-4">
                <h5>Full Name</h5>
                <span>Engineer</span>
              </div> -->
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Team End -->

    <!-- Footer Start -->
    <div
      class="container-fluid bg-dark footer mt-5 pt-5 wow fadeIn"
      data-wow-delay="0.1s"
    >
      <div class="container py-5">
        <div class="row g-5">
          <div class="col-lg-3 col-md-6">
            <h1 class="text-white mb-4">
              <img src="{{ asset('public/img/rapid_nobg.png') }}" alt="Logo Rapid" class="logo-image me-3" width="200" height="120">
            </h1>
            <p>
              TO BE ASIA'S LEADING TOTAL SOLUTIONS PACKAGING & PLASTIC PROVIDER
            </p>
            <div class="d-flex pt-2">
              <a class="btn btn-square btn-outline me-1" href=""
                ><i class="fab fa-twitter"></i
              ></a>
              <a class="btn btn-square btn-outline me-1" href=""
                ><i class="fab fa-facebook-f"></i
              ></a>
              <a class="btn btn-square btn-outline me-1" href=""
                ><i class="fab fa-youtube"></i
              ></a>
              <a class="btn btn-square btn-outline me-0" href=""
                ><i class="fab fa-linkedin-in"></i
              ></a>
            </div>
          </div>
          <div class="col-lg-3 col-md-6">
            <h4 class="text-light mb-4">Address</h4>
            <p>
              <i class="fa fa-map-marker-alt me-3"></i>Jl. Berbek Industri V No.10, Bebek, Berbek, Kec. Waru, Kabupaten Sidoarjo, Jawa Timur 61256
            </p>
            <p><i class="fa fa-phone-alt me-3"></i>(031) 8436669</p>
            <p><i class="fa fa-envelope me-3"></i>it@rapidplast.id</p>
          </div>
          <div class="col-lg-3 col-md-6">
            <h4 class="text-light mb-4">Quick Links</h4>
            <a class="btn btn-link" href="{{ route('landing') }}">Home</a>
            <a class="btn btn-link" href="{{ route('add.product') }}">Add Product</a>
            <a class="btn btn-link" href="{{ route('all.product') }}">Detail Product</a>
            <a class="btn btn-link" href="{{ route('disposal.product') }}">Disposal Product</a>
          </div>
          <div class="col-lg-3 col-md-6">
            <h4 class="text-light mb-4">Newsletter</h4>
            <p>PT. Rapid Plast Indonesia</p>
            <div class="position-relative mx-auto" style="max-width: 400px">
              <input
                class="form-control bg-transparent w-100 py-3 ps-4 pe-5"
                type="text"
                placeholder="Your email"
              />
              <button
                type="button"
                class="btn py-2 position-absolute top-0 end-0 mt-2 me-2"
              >
                Log In
              </button>
            </div>
          </div>
        </div>
      </div>
      <div class="container-fluid copyright">
        <div class="container">
          <div class="row">
            <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
              &copy; <a href="#">Inventory System RapidPlast</a>, All Right Reserved.
            </div>
            <div class="col-md-6 text-center text-md-end">
              <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
              Designed By <a href="https://htmlcodex.com">HTML Codex</a>
              <br />Distributed By:
              <a href="https://themewagon.com" target="_blank">ThemeWagon</a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Footer End -->

    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"
      ><i class="bi bi-arrow-up"></i
    ></a>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <script>
        function showLoginAlert() {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Sorry, you have to login first!',
            });
        }
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
                document.querySelector('form[action="{{ route('logout') }}"]').submit();
            });
        }       
    </script>
    <script>
      $(document).ready(function () {
          $('.nav-item.dropdown').on('click', function () {
              $(this).toggleClass('active');
          });
      });
    </script>

  </body>
</html>
