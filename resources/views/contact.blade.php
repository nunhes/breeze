@extends('layout')

@section('content')
    {{-- <h1>Contenido de Contacto</h1> --}}

    <section class="relative flex flex-wrap lg:h-screen lg:items-center">
        <div class="relative w-full h-64 sm:h-96 lg:w-1/2 lg:h-full"><img alt="No alt" src="https://res.cloudinary.com/dpatgkgqs/image/upload/v1639027247/3_u4higx.jpg" class="absolute inset-0 object-cover w-full h-full bg-blue-100 "></div>
        <div class="w-full px-4 py-12 lg:w-1/2 sm:px-6 lg:px-8 sm:py-16 lg:py-24">
          <div class="max-w-lg mx-auto">
            <h1 class="text-3xl font-bold sm:text-4xl">Contact to us</h1>
            <p class="mt-4 text-gray-500">Lorem ipsum dolor sit amet consectetur adipisicing elit. Et libero nulla eaque error neque ipsa culpa autem, at itaque nostrum!</p>
    </div>
          <form class="max-w-xl mx-auto mt-8 mb-0 space-y-4">
            <div class=""><label class="sr-only">
                <p class="">{{ __('Your e-mail') }}</p>
              </label>
              <div class="relative"><input placeholder="Enter Email" class="w-full p-3 pr-12 text-sm rounded-global shadow-sm border-2"><span class="absolute inset-y-0 inline-flex items-center right-4"><span><svg class="w-5 h-5 text-gray-400" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 12a4 4 0 10-8 0 4 4 0 008 0zm0 0v1.5a2.5 2.5 0 005 0V12a9 9 0 10-9 9m4.5-1.206a8.959 8.959 0 01-4.5 1.207"></path>
                    </svg></span></span></div>
        </div>
            <div class=""><label class="sr-only">
                <p class="">{{ __('Your message') }}</p>
              </label>
              <div class="relative"><textarea placeholder="Enter your message" class="w-full p-3 pr-12 text-sm rounded-global shadow-sm border-2"></textarea><span class="absolute inset-y-0 inline-flex items-center right-4"><span><svg class="w-5 h-5 text-gray-400" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path>
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"></path>
              </svg></span></span></div>
        </div>
            <div class="flex items-center justify-between">
              <div class="flex items-center">
                <p class="text-sm text-gray-500"><input type="checkbox"> {{ __('I read & accept our policies') }}</p>
              </div><button class="inline-block px-10 py-2 ml-3 text-sm font-medium text-white bg-blue-500 rounded-global">{{ __('Send') }}</button>
      </div>
          </form>
    </div>
  </section>

@endsection
