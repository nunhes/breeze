<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>

    <div class="py-12">

        @if (Route::has('login'))
            <div class="hidden fixed top-0 right-0 px-6 py-4 sm:block">
                @auth
                    <!-- a href="{{ url('/dashboard') }}" class="text-sm text-gray-700 dark:text-gray-500 underline">Dashboard</a -->
                @else
                    <a href="{{ route('login') }}" class="text-sm text-gray-700 dark:text-gray-500 underline">Log in</a>

                    @if (Route::has('register'))
                        <a href="{{ route('register') }}" class="ml-4 text-sm text-gray-700 dark:text-gray-500 underline">Register</a>
                    @endif
                @endauth
            </div>
        @endif

        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 bg-white border-b border-gray-200">
                    You're logged in!
                </div>

                <!-- formulario para subir imaxes -->
                <div class="p-6 bg-white border-b border-gray-200">
                <form action="codeaguardar" enctype="multipart/form-data" method="POST">
                    @csrf
                    <input type="text" name="nombre" placeholder="ingrese nombre:">
                    <input type="file" name="imagen">
                    <button type="submit">GUARDAR</button>
                </form>
                </div>
                <!-- fin formulario -->

            </div>
        </div>
    </div>
</x-app-layout>
