
``laravel new breeze --git``

``cd breeze``

Só para desenvolvemento, pero vas precisar Breeze:
``composer require laravel/breeze --dev``

``php artisan breeze:install``

Se o scaffolding de Breeze se instala con exito, executa
``npm install`` e 
``npm run dev`` 
para construír os activos necesarios.

Edita agora ``.env`` coas credenciais da base de datos que vas a empregar coa apliación.

Insatalar migracións de iniico:

```php artisan migrate```

ir a 
breeze.test

Rexistrar un novo usuario

``nunhes
nunhes@gmail-com
adminadmin``

---
Tailwind
https://ralphjsmit.com/tailwind-sass-laravel

---
Traducir cadeas de texto:

``config/app.php``    &rarr; modificar a linguaxe por defecto da app, tamén se pode modificar o fallback.
No cartafol ``./resources/lang/`` crea a carpeta par o novo idioma.    &rarr; ``gl``.
Dentro iran os arquivos que nos permitiran traducir a aplicación

---
Para coñecer as rutas da aplicación que estamos a crear a medida que implementamos novas funcionalidades pódese empregar o comando:
``php artisan route:list -c``
-> ``-c`` para unha vista compacta

---

Ref:
https://www.youtube.com/watch?v=nFKwq2PHJ64&t=43s

Crear un sitio en 20 min.

Creamos as rutas:
```php
Route::view('/', 'home')->name('home');
Route::view('acerca-de', 'about')->name('about');

Route::view('blog', 'BlogController@index')->name('blog.index');
Route::view('blog/{post:slug}', 'BlogController@show')->name('blog.show');

Route::view('contacto', 'contact')->name('contact');
```


https://yossiabramov.com/blog/create-a-blog-with-laravel-migrations-model-factories-and-seeding

command:

php artisan make:model Post -mf
COPY 
content_copy
By running the command we’ve created 3 files:

/app/Models/Post.php
/database/factories/PostFactory.php
/database/migrations/xxxx_xx_xx_xxxxxx_create_posts_table.php
COPY 
content_copy
I want to focus on migrations and DB seeding with model factories, so we will not go over models in this tutorial.

Let’s run these artisan commands to generate the necessary files for Tag and PostTags:

php artisan make:model Tag -mf
php artisan make:model PostTag -m








---

const defaultTheme = require('tailwindcss/defaultTheme');
const plugin = require('tailwindcss/plugin')

module.exports = {
    presets: [
        require('./resources/js/preset.js')
      ],
    content: [
        './vendor/laravel/framework/src/Illuminate/Pagination/resources/views/*.blade.php',
        './storage/framework/views/*.php',
        './resources/views/**/*.blade.php',
    ],

    theme: {
container: {
        padding: "2rem"
      },
      fontSize: {
        xs: ".75rem",
        sm: ".875rem",
        tiny: ".875rem",
        base: "1rem",
        lg: "1.125rem",
        xl: "1.25rem",
        "2xl": "1.5rem",
        "3xl": "1.875rem",
        "4xl": "2.25rem",
        "5xl": "3rem",
        "6xl": "4rem",
        "7xl": "5rem",
        "8xl": "6rem",
        "9xl": "7rem",
        "10xl": "8rem"
      },
        extend: {
            fontFamily: {
                sans: ['Nunito', ...defaultTheme.fontFamily.sans],
            },
        },
    },

    plugins: [
require('@tailwindcss/typography'),
require('@tailwindcss/forms')
],
    variants: {
boxShadow: {
        xs: "0 0 0 1px rgba(0, 0, 0, 0.05)",
        sm: "0 1px 2px rgba(3,49,86,0.2)",
        md: "0 3px 9px rgba(0,0,0,.5)",
        lg: "0 5px 15px rgba(0,0,0,.5)",
        xl: "0 10px 20px rgba(0,0,0,.5)",
        "2xl": "0 20px 66px 0 rgba(34,48,73,.2)",
        inner: "inset 0 2px 4px 0 rgba(0, 0, 0, 0.06)",
        outline: "0 0 0 3px rgba(66, 153, 225, 0.5)",
        none: "none"
      },
      extend: {
        backgroundColor: ['active']
      },
    },
  }


  /* html {
    font-family: sans-serif;
}

body{
    margin: 0;
    padding: 0;
}

h1 {
    color: #000066;
    text-decoration: underline;
    margin: 10px;
}

.menu {
    list-style: none;
    padding: 0;
    margin: 0;
    background-color: #333;
}

.menu li a {
    color: #fff;
    display: block;
    text-decoration: none;
    padding: 0.5em 1em;
}

.contenido{
    margin: auto;
    max-width: 1080px;
}

ul {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
    grid-gap: 1em;
}

li {
    list-style: none;
    margin: auto;
    border: 1px solid black;
    padding: 2px;
}

p {
    margin: 10px;
    align-content: center;
}

@media screen and (min-width: 520px){
    .menu{
        display: flex;
    }
} */




------
        <div x-data="{ isOpen: false }" class="flex justify-between p-4 bg-gray-600 lg:p-8">
            <div class="flex items-center">
                <h3 class="text-2xl font-bold text-white">Logo</h3>
            </div>

            <!-- left header section -->
            <div class="flex items-center justify-between">
                <button @click="isOpen = !isOpen" type="submit">
                    <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6 text-white lg:hidden" fill="none"
                        viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M4 6h16M4 12h16M4 18h16" />
                    </svg>
                </button>
                <div class="hidden space-x-6 lg:inline-block">
                    <a href="#" class="text-base text-white ">Menu1</a>
                    <a href="#" class="text-base text-white ">Menu2</a>
                    <a href="#" class="text-base text-white ">Menu3</a>
                    <a href="#" class="text-base text-white ">Menu3</a>
                </div>

                <!-- mobile navbar -->
                <div class="mobile-navbar">
                    <!-- navbar wrapper -->
                    <div class="fixed left-0 w-full h-48 p-5 bg-white rounded-lg shadow-xl top-16" x-show="isOpen"
                        @click.away=" isOpen = false">
                        <div class="flex flex-col space-y-6">
                            <a href="#" class="text-sm text-black">Menu1</a>
                            <a href="#" class="text-sm text-black">Menu2</a>
                            <a href="#" class="text-sm text-black">Menu3</a>
                            <a href="#" class="text-sm text-black">Menu3</a>
                        </div>
                    </div>
                </div>
                <!-- end mobile navbar -->
            </div>
            <!-- right header section -->

        </div>
