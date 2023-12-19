<!DOCTYPE html>
<html lang="en">
<head>
<link rel="icon" href="public/img/favico.png" type="image/png">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Inventory-Management-System</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="{{ asset('public/frontend') }}/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="{{ asset('public/frontend') }}/css/style.css">
    <style>
        .toggle-password {
            position: absolute;
            top: 50%;
            right: 15px; 
            transform: translateY(-50%);
            cursor: pointer;
        }
        .social-login {
            margin-top: 17px; 
            position: center;
        }
    </style>

</head>
<body>
    @if(session('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
    @endif
    <div class="main">
        <!-- Sing in  Form -->
        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                    <figure><img src="https://www.test-online.rapidplast.co.id/public/img/logo3.png"></figure>
                        
                    </div>

                    <div class="signin-form">
                        <center><h2 class="form-title">Login</h2></center>
                        <form method="POST" action="{{ route('login') }}" class="register-form" id="login-form">
                            @csrf
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="email" name="email" id="email" placeholder="Email" required=""/>
                            </div>
                            <div class="form-group">
                                <label for="password"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="password" id="password" placeholder="Password" required=""/>
                                <span toggle="#password" class="zmdi zmdi-eye field-icon toggle-password"></span>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="remember-me" id="remember-me" class="agree-term"/>
                                <label for="remember-me" class="label-agree-term"><span><span></span></span>Remember me</label>
                            </div>
                            <center><div class="form-group form-button">
                                <input type="submit" name="signin" id="signin" class="form-submit" style="background-color: #a20d0d;" value="Login"/>
                            </div></center>
                            <br>
                            <div class="form-group"> 
                                <a href="{{ route('register') }}" class="signup-image-link">Anda belum punya akun?</a>
                            </div>
                        </form>
                        <div class="social-login">
                            <span class="social-label">Or login with</span>
                            <ul class="socials">
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-facebook"></i></a></li>
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-twitter"></i></a></li>
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-google" style="background-color: #a20d0d;"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </div>

    <!-- JS -->
    <script src="{{ asset('public/frontend') }}/vendor/jquery/jquery.min.js"></script>
    <script src="{{ asset('public/frontend') }}/js/main.js"></script>
    <!-- JS -->
    <script src="{{ asset('public/frontend') }}/vendor/jquery/jquery.min.js"></script>
    <script src="{{ asset('public/frontend') }}/js/main.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    
    <script>
        function showLoginForm(){    
            @if(session('success'))
                Swal.fire({
                    icon: 'success',
                    title: 'Selamat Datang Admin!',
                    text: '{{ session("success") }}',
                    showConfirmButton: true
                });
            @endif
        }

        // Panggil showLoginForm setelah halaman selesai dimuat
        $(document).ready(function() {
            showLoginForm();
        });
    </script>
    <script>
        const passwordInput = document.querySelector('#password');
        const togglePasswordButton = document.querySelector('.toggle-password');

        togglePasswordButton.addEventListener('click', function () {
            const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
            passwordInput.setAttribute('type', type);
            togglePasswordButton.classList.toggle('zmdi-eye');
            togglePasswordButton.classList.toggle('zmdi-eye-off');
        });
    </script>
</body>
</html>