<!DOCTYPE html>
<html lang="gl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ config('app.name', 'Laravel') }}</title>

            <!-- Fonts -->
            <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap">

            <!-- Styles -->
            <link rel="stylesheet" href="{{ asset('css/app.css') }}">

            <!-- Scripts -->
            <script src="{{ asset('js/app.js') }}" defer></script>

    <style>
        .active {
            color: #02c442;
            text-decoration: none;
            border-bottom: #02c442 solid 3px;
        }
    </style>

</head>

<body class="antialiased">
<!-- header/navigation -->

<nav class="bg-white shadow-lg">
			<div class="max-w-6xl mx-auto px-4">
				<div class="flex justify-between">
					<div class="flex space-x-7">
						<div>
							<!-- Website Logo -->
								<a href="{{ route('home') }}" class="flex items-center py-4 px-2">
						<img src="{{ URL('imx/ambo.webp') }}" alt="Logo" class="h-8 w-8 mr-2">
								<span class="font-semibold text-gray-500 text-lg">Bitsolto</span>
							</a>
						</div>
						<!-- Primary Navbar items      text-green-500 border-b-4 border-green-500 font-semibold -->
						<div class="hidden md:flex items-center space-x-1">
							<a href="{{ route('home') }}"         class="py-4 px-2 text-gray-500 font-semibold hover:text-green-500 transition duration-300 {{ request()->routeIs('home') ? 'active':'' }}">Inicio</a>
							<a  href="{{ route('about') }}"       class="py-4 px-2 text-gray-500 font-semibold hover:text-green-500 transition duration-300 {{ request()->routeIs('about') ? 'active':'' }}">Servicios</a>
							<a  href="{{ route('blog.index') }}"  class="py-4 px-2 text-gray-500 font-semibold hover:text-green-500 transition duration-300 {{ request()->routeIs('blog.index') ? 'active':'' }}">Novas</a>
							<a  href="{{ route('contact') }}"     class="py-4 px-2 text-gray-500 font-semibold hover:text-green-500 transition duration-300 {{ request()->routeIs('contact') ? 'active':'' }}">Contacto</a>
						</div>
					</div>
					<!-- Secondary Navbar items -->
				{{--	<div class="hidden md:flex items-center space-x-3 ">
						<a href="" class="py-2 px-2 font-medium text-gray-500 rounded hover:bg-green-500 hover:text-white transition duration-300">{{ __('Log In') }}</a>
						<a href="" class="py-2 px-2 font-medium text-white bg-green-500 rounded hover:bg-green-400 transition duration-300">Sign Up</a>
					</div> --}}
					<!-- Mobile menu button -->
					<div class="md:hidden flex items-center">
						<button class="outline-none mobile-menu-button">
						<svg class=" w-6 h-6 text-gray-500 hover:text-green-500 "
							x-show="!showMenu"
							fill="none"
							stroke-linecap="round"
							stroke-linejoin="round"
							stroke-width="2"
							viewBox="0 0 24 24"
							stroke="currentColor"
						>
							<path d="M4 6h16M4 12h16M4 18h16"></path>
						</svg>
					</button>
					</div>
				</div>
			</div>
			<!-- mobile menu -->
			<div class="hidden mobile-menu">
				<ul class="">
					<li class="active"><a href="{{ route('home') }}" class="block text-sm px-2 py-4 text-white bg-green-500 font-semibold">Home</a></li>
					<li><a href="{{ route('about') }}" class="block text-sm px-2 py-4 hover:bg-green-500 transition duration-300">Services</a></li>
					<li><a href="{{ route('blog.index') }}" class="block text-sm px-2 py-4 hover:bg-green-500 transition duration-300">About</a></li>
					<li><a href="{{ route('contact') }}" class="block text-sm px-2 py-4 hover:bg-green-500 transition duration-300">Contact Us</a></li>
				</ul>
			</div>
			<script>
				const btn = document.querySelector("button.mobile-menu-button");
				const menu = document.querySelector(".mobile-menu");

				btn.addEventListener("click", () => {
					menu.classList.toggle("hidden");
				});
			</script>
		</nav>



{{-- <ul class="menu">
    <li><a href="{{ route('home') }}">Home</a></li>
    <li><a href="{{ route('about') }}">Acerca de...</a></li>
    <li><a href="{{ route('blog.index') }}">Novas</a></li>
    <li><a href="{{ route('contact') }}">Contacto</a></li>
</ul> --}}

<section class="container mx-auto mb-6 py-6">
    <div class="px-4 font-body xl:max-w-6xl xl:mx-auto 2xl:px-0">
    @yield('content')
</div>
</section>

<footer class="bg-black">

    <div class="pt-12 lg:pt-16">
      <div class="px-4 mx-auto max-w-7xl md:px-8">
        <div class="grid grid-cols-2 md:grid-cols-4 lg:grid-cols-6 gap-12 lg:gap-8 mb-16">
          <div class="col-span-full lg:col-span-2">
            <div class="lg:-mt-2 mb-4">
              <a
                href="#"
                class="inline-flex items-center text-black-800 text-xl md:text-2xl font-bold gap-2">
                <span class="w-5 h-auto text-indigo-500">
                  <div style="font-size:inherit;color:inherit;padding:2px">
                    <svg
                      stroke="currentColor"
                      fill="currentColor"
                      stroke-width="0"
                      viewBox="0 0 512 512"
                      height="1em"
                      width="1em"
                      xmlns="http://www.w3.org/2000/svg">
                      <path d="M179.2 230.4l102.4 102.4-102.4 102.4L0 256 179.2 76.8l44.8 44.8-25.6 25.6-19.2-19.2-128 128 128 128 51.5-51.5-77.1-76.5 25.6-25.6zM332.8 76.8L230.4 179.2l102.4 102.4 25.6-25.6-77.1-76.5 51.5-51.5 128 128-128 128-19.2-19.2-25.6 25.6 44.8 44.8L512 256 332.8 76.8z"></path>
                    </svg>
                  </div>
                </span>
                <span class="text-indigo-500"> {{ config('app.name', 'Laravel') }}</span>
              </a>
            </div>
            <p class="text-gray-500 sm:pr-8 mb-6">
              Filler text is dummy text which has no meaning however looks very
              similar to real text
            </p>
            <div class="flex gap-4">
              <a
                href="#"
                class="text-gray-400 hover:text-gray-500 active:text-gray-600 transition duration-100">
                <span class="w-5 h-5">
                  <div style="font-size:inherit;color:inherit;padding:2px">
                    <svg
                      stroke="currentColor"
                      fill="currentColor"
                      stroke-width="0"
                      viewBox="0 0 496 512"
                      height="1em"
                      width="1em"
                      xmlns="http://www.w3.org/2000/svg">
                      <path d="M248 8C111.1 8 0 119.1 0 256s111.1 248 248 248 248-111.1 248-248S384.9 8 248 8zm-70.7 372c-68.8 0-124-55.5-124-124s55.2-124 124-124c31.3 0 60.1 11 83 32.3l-33.6 32.6c-13.2-12.9-31.3-19.1-49.4-19.1-42.9 0-77.2 35.5-77.2 78.1s34.2 78.1 77.2 78.1c32.6 0 64.9-19.1 70.1-53.3h-70.1v-42.6h116.9c1.3 6.8 1.9 13.6 1.9 20.7 0 70.8-47.5 121.2-118.8 121.2zm230.2-106.2v35.5H372v-35.5h-35.5v-35.5H372v-35.5h35.5v35.5h35.2v35.5h-35.2z"></path>
                    </svg>
                  </div>
                </span>
              </a>
              <a
                href="#"
                class="text-gray-400 hover:text-gray-500 active:text-gray-600 transition duration-100">
                <span>
                  <svg
                    class="w-5 h-5"
                    class="w-5 h-5"
                    width="24"
                    height="24"
                    viewBox="0 0 24 24"
                    fill="currentColor"
                    xmlns="http://www.w3.org/2000/svg">
                    {" "}
                    <path d="M24 4.557c-.883.392-1.832.656-2.828.775 1.017-.609 1.798-1.574 2.165-2.724-.951.564-2.005.974-3.127 1.195-.897-.957-2.178-1.555-3.594-1.555-3.179 0-5.515 2.966-4.797 6.045-4.091-.205-7.719-2.165-10.148-5.144-1.29 2.213-.669 5.108 1.523 6.574-.806-.026-1.566-.247-2.229-.616-.054 2.281 1.581 4.415 3.949 4.89-.693.188-1.452.232-2.224.084.626 1.956 2.444 3.379 4.6 3.419-2.07 1.623-4.678 2.348-7.29 2.04 2.179 1.397 4.768 2.212 7.548 2.212 9.142 0 14.307-7.721 13.995-14.646.962-.695 1.797-1.562 2.457-2.549z" />{" "}
                  </svg>
                </span>
              </a>
              <a
                href="#"
                class="text-gray-400 hover:text-gray-500 active:text-gray-600 transition duration-100">
                <span>
                  <svg
                    class="w-5 h-5"
                    class="w-5 h-5"
                    width="24"
                    height="24"
                    viewBox="0 0 24 24"
                    fill="currentColor"
                    xmlns="http://www.w3.org/2000/svg">
                    {" "}
                    <path d="M19 0h-14c-2.761 0-5 2.239-5 5v14c0 2.761 2.239 5 5 5h14c2.762 0 5-2.239 5-5v-14c0-2.761-2.238-5-5-5zm-11 19h-3v-11h3v11zm-1.5-12.268c-.966 0-1.75-.79-1.75-1.764s.784-1.764 1.75-1.764 1.75.79 1.75 1.764-.783 1.764-1.75 1.764zm13.5 12.268h-3v-5.604c0-3.368-4-3.113-4 0v5.604h-3v-11h3v1.765c1.396-2.586 7-2.777 7 2.476v6.759z" />{" "}
                  </svg>
                </span>
              </a>
              <a
                href="#"
                class="text-gray-400 hover:text-gray-500 active:text-gray-600 transition duration-100">
                <span class="w-5 h-5">
                  <div style="font-size:inherit;color:inherit;padding:2px">
                    <svg
                      stroke="currentColor"
                      fill="currentColor"
                      stroke-width="0"
                      viewBox="0 0 448 512"
                      height="1em"
                      width="1em"
                      xmlns="http://www.w3.org/2000/svg">
                      <path d="M400 32H48A48 48 0 0 0 0 80v352a48 48 0 0 0 48 48h137.25V327.69h-63V256h63v-54.64c0-62.15 37-96.48 93.67-96.48 27.14 0 55.52 4.84 55.52 4.84v61h-31.27c-30.81 0-40.42 19.12-40.42 38.73V256h68.78l-11 71.69h-57.78V480H400a48 48 0 0 0 48-48V80a48 48 0 0 0-48-48z"></path>
                    </svg>
                  </div>
                </span>
              </a>
            </div>
          </div>
          <div>
            <div class="text-gray-300 font-bold tracking-widest uppercase mb-4">
              Products
            </div>
            <nav class="flex flex-col gap-4">
              <div>
                <a
                  href="#"
                  class="text-gray-500 hover:text-indigo-500 active:text-indigo-600 transition duration-100">
                  Overview
                </a>
              </div>
              <div>
                <a
                  href="#"
                  class="text-gray-500 hover:text-indigo-500 active:text-indigo-600 transition duration-100">
                  Solutions
                </a>
              </div>
              <div>
                <a
                  href="#"
                  class="text-gray-500 hover:text-indigo-500 active:text-indigo-600 transition duration-100">
                  Pricing
                </a>
              </div>
              <div>
                <a
                  href="#"
                  class="text-gray-500 hover:text-indigo-500 active:text-indigo-600 transition duration-100">
                  Customers
                </a>
              </div>
            </nav>
          </div>
          <div>
            <div class="text-gray-300 font-bold tracking-widest uppercase mb-4">
              Company
            </div>
            <nav class="flex flex-col gap-4">
              <div>
                <a
                  href="#"
                  class="text-gray-500 hover:text-indigo-500 active:text-indigo-600 transition duration-100">
                  About
                </a>
              </div>
              <div>
                <a
                  href="#"
                  class="text-gray-500 hover:text-indigo-500 active:text-indigo-600 transition duration-100">
                  Investor Relations
                </a>
              </div>
              <div>
                <a
                  href="#"
                  class="text-gray-500 hover:text-indigo-500 active:text-indigo-600 transition duration-100">
                  Jobs
                </a>
              </div>
              <div>
                <a
                  href="#"
                  class="text-gray-500 hover:text-indigo-500 active:text-indigo-600 transition duration-100">
                  Press
                </a>
              </div>
              <div>
                <a
                  href="#"
                  class="text-gray-500 hover:text-indigo-500 active:text-indigo-600 transition duration-100">
                  Blog
                </a>
              </div>
            </nav>
          </div>
          <div>
            <div class="text-gray-300 font-bold tracking-widest uppercase mb-4">
              Support
            </div>
            <nav class="flex flex-col gap-4">
              <div>
                <a
                  href="#"
                  class="text-gray-500 hover:text-indigo-500 active:text-indigo-600 transition duration-100">
                  Contact
                </a>
              </div>
              <div>
                <a
                  href="#"
                  class="text-gray-500 hover:text-indigo-500 active:text-indigo-600 transition duration-100">
                  Documentation
                </a>
              </div>
              <div>
                <a
                  href="#"
                  class="text-gray-500 hover:text-indigo-500 active:text-indigo-600 transition duration-100">
                  Chat
                </a>
              </div>
              <div>
                <a
                  href="#"
                  class="text-gray-500 hover:text-indigo-500 active:text-indigo-600 transition duration-100">
                  FAQ
                </a>
              </div>
            </nav>
          </div>
          <div>
            <div class="text-gray-300 font-bold tracking-widest uppercase mb-4">
              Legal
            </div>
            <nav class="flex flex-col gap-4">
              <div>
                <a
                  href="#"
                  class="text-gray-500 hover:text-indigo-500 active:text-indigo-600 transition duration-100">
                  Terms of Service
                </a>
              </div>
              <div>
                <a
                  href="#"
                  class="text-gray-500 hover:text-indigo-500 active:text-indigo-600 transition duration-100">
                  Privacy Policy
                </a>
              </div>
              <div>
                <a
                  href="#"
                  class="text-gray-500 hover:text-indigo-500 active:text-indigo-600 transition duration-100">
                  Cookie settings
                </a>
              </div>
            </nav>
          </div>
        </div>
        <div class="text-gray-400 text-sm border-t py-8">
            {{ config('app.name', 'Laravel') }}  © 2022 - Acme Inc. - All rights reserved.
        </div>
      </div>
    </div>
    </footer>
</body>
</html>
