<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <!-- Favicon -->
  <link href="{{asset('assets/images/favicon.png')}}" rel="icon" type="image/png">

  <!-- Basic Page Needs
        ================================================== -->
  <title>Instagram</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="Instello - Sharing Photos platform HTML Template">

  <!-- icons
        ================================================== -->
  <link rel="stylesheet" href="{{asset('assets/css/icons.css')}}">

  <!-- CSS 
        ================================================== -->
  <link rel="stylesheet" href="{{asset('assets/css/uikit.css')}}">
  <link rel="stylesheet" href="{{asset('assets/css/style.css')}}">
  <link rel="stylesheet" href="{{asset('assets/css/tailwind.css')}}">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">


</head>

<body class="bg-gray-100">


  <div id="wrapper" class="flex flex-col justify-between h-screen">

    <!-- header-->
    <div class="bg-white py-4 shadow dark:bg-gray-800">
      <div class="max-w-6xl mx-auto">


        <div class="flex items-center lg:justify-between justify-around">

          <a href="trending.html">
            <img src="assets/images/logo.png" alt="" class="w-32">
          </a>

          <div class="capitalize flex font-semibold hidden lg:block my-2 space-x-3 text-center text-sm">
            <a href="{{url('/')}}"class="bg-pink-500 pink-500 px-6 py-3 rounded-md shadow text-white" style="color: #fff !important;">Login</a>
            <a href="{{url('/register')}}" class="py-3 px-4">Register</a>
          </div>

        </div>
      </div>
    </div>

    <!-- Content-->
    <div>
      <div class="lg:p-12 max-w-md max-w-xl lg:my-0 my-12 mx-auto p-6 space-y-">
        <h1 class="lg:text-3xl text-xl font-semibold  mb-6 text-center"> Log in</h1>
        <p class="mb-2 text-black text-lg"> Email or Username</p>
        <form action="">
          <input type="text" placeholder="example@mydomain.com" name="email" class="bg-gray-200 mb-2 shadow-none dark:bg-gray-800" style="border: 1px solid #d3d5d8 !important;">
          <input type="text" placeholder="***********" name="pass" class="bg-gray-200 mb-2 shadow-none dark:bg-gray-800" style="border: 1px solid #d3d5d8 !important;">
          <div class="flex justify-between my-4">
            <div class="checkbox">
              <input type="checkbox" id="chekcbox1" checked>
              <label for="chekcbox1"><span class="checkbox-icon"></span>Remember Me</label>
            </div>
            <a href="#"> Forgot Your Password? </a>
          </div>
          <input type="submit" name="save" class="bg-gradient-to-br from-pink-500 py-1 rounded-md text-white text-xl to-red-400 w-full w-100 fs-5" value="Login">
          <div class="text-center mt-5 space-x-2">
            <p class="text-base"> Not registered? <a href="{{url('/register')}}" class=""> Create a account </a></p>
          </div>
        </form>
      </div>
    </div>

    <!-- Footer -->

    <div class="lg:mb-5 py-3 uk-link-reset">
      <div class="flex flex-col items-center justify-between lg:flex-row max-w-6xl mx-auto lg:space-y-0 space-y-3">
        <div class="flex space-x-2 text-gray-700 uppercase">
          <a href="#"> About</a>
          <a href="#"> Help</a>
          <a href="#"> Terms</a>
          <a href="#"> Privacy</a>
        </div>
        <p class="capitalize"> © copyright 2020 by Instello</p>
      </div>
    </div>

  </div>


  <script>
    (function(window, document, undefined) {
      'use strict';
      if (!('localStorage' in window)) return;
      var nightMode = localStorage.getItem('gmtNightMode');
      if (nightMode) {
        document.documentElement.className += ' dark';
      }
    })(window, document);


    (function(window, document, undefined) {

      'use strict';

      // Feature test
      if (!('localStorage' in window)) return;

      // Get our newly insert toggle
      var nightMode = document.querySelector('#night-mode');
      if (!nightMode) return;

      // When clicked, toggle night mode on or off
      nightMode.addEventListener('click', function(event) {
        event.preventDefault();
        document.documentElement.classList.toggle('dark');
        if (document.documentElement.classList.contains('dark')) {
          localStorage.setItem('gmtNightMode', true);
          return;
        }
        localStorage.removeItem('gmtNightMode');
      }, false);

    })(window, document);
  </script>

  @include('footer')