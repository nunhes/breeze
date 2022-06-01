@extends('layout')

@section('content')
    {{-- <h1>Contenido de Blog</h1> --}}

    <section class=" py-10 ">
        <div class=" mx-auto max-w-7xl ">
          <div class="flex flex-wrap w-full px-4 pb-5">
            <div class="lg:w-1/2 w-full mb-6 lg:mb-0">
              <h1 class="text-3xl title-font mb-2 text-gray-900 font-bold dark:text-slate-100 sm:text-4xl">
                Dive into tasty treats!
              </h1>
              <div class="h-1 rounded bg-primary w-14">
                <div class="p-2"></div>
              </div>
            </div>
            <p class="w-full text-lg leading-snug font-light font-body lg:w-1/2 ">
              Whatever cardigan tote bag tumblr hexagon brooklyn asymmetrical
              gentrify, subway tile poke farm-to-table. Franzen you probably haven't
              heard of them.
            </p>
          </div>
          {{-- <div class="flex flex-wrap">
            <div class="p-4 md:w-1/2 xl:w-1/4">
              <div class="bg-gray-50 dark:bg-gray-900">
                <a href="#">
                  <img
                    alt="No alt"
                    src="https://res.cloudinary.com/dpatgkgqs/image/upload/v1647761892/illustrations/undraw_hamburger_-8-ge6_fdrl5l.svg"
                    class="h-40 rounded w-full object-cover object-center mb-2 xl:mb-0 "
                  />
                </a>
                <div class="p-6 rounded-lg dark:divide-undefined">
                  <h2 class="text-lg text-gray-900 title-font mb-0 font-heading font-semibold dark:divide-undefined dark:divide-undefined dark:text-gray-200">
                    Ceviche de palmito
                  </h2>
                  <h3 class="tracking-widest text-xs font-medium title-font text-primary mb-2">
                    SUBTITLE
                  </h3>
                  <p class=" ">
                    Fingerstache flexitarian street art 8-bit waistcoat. Distillery
                    hexagon disrupt edison bulbche.
                  </p>
                </div>
              </div>
            </div>
            <div class="p-4 md:w-1/2 xl:w-1/4">
              <div class="bg-gray-50 dark:bg-gray-900">
                <img
                  alt="No alt"
                  src="https://res.cloudinary.com/dpatgkgqs/image/upload/v1647761950/illustrations/undraw_barbecue_3x93_nfyxu8.svg"
                  class="h-40 rounded w-full object-cover object-center mb-2 xl:mb-0 "
                />
                <div class="p-6 rounded-lg dark:divide-undefined">
                  <h2 class="text-lg text-gray-900 title-font mb-0 font-semibold dark:text-gray-200 dark:divide-undefined">
                    Chicken spaghetti
                  </h2>
                  <h3 class="tracking-widest text-xs font-medium title-font text-primary mb-2">
                    SUBTITLE
                  </h3>
                  <p class=" ">
                    Fingerstache flexitarian street art 8-bit waistcoat. Distillery
                    hexagon disrupt edison bulbche.
                  </p>
                </div>
              </div>
            </div>
            <div class="p-4 md:w-1/2 xl:w-1/4">
              <div class="bg-gray-50 dark:bg-gray-900">
                <img
                  alt="No alt"
                  src="https://res.cloudinary.com/dpatgkgqs/image/upload/v1647761973/illustrations/undraw_breakfast_psiw_u0zaea.svg"
                  class="h-40 rounded w-full object-cover object-center mb-2 xl:mb-0 "
                />
                <div class="p-6 rounded-lg dark:divide-undefined">
                  <h2 class="text-lg text-gray-900 title-font font-semibold mb-0 dark:text-gray-200">
                    Green Salad
                  </h2>
                  <h3 class="tracking-widest text-xs font-medium title-font text-primary mb-2">
                    SUBTITLE
                  </h3>
                  <p class=" ">
                    Fingerstache flexitarian street art 8-bit waistcoat. Distillery
                    hexagon disrupt edison bulbche.
                  </p>
                </div>
              </div>
            </div>
            <div class="p-4 md:w-1/2 xl:w-1/4">
              <div class="bg-gray-50 dark:bg-gray-900">
                <img
                  alt="No alt"
                  src="https://res.cloudinary.com/dpatgkgqs/image/upload/v1647762002/illustrations/undraw_cooking_lyxy_bjjdig.svg"
                  class="h-40 rounded w-full object-cover object-center mb-2 xl:mb-0 "
                />
                <div class="p-6 rounded-lg dark:divide-undefined">
                  <h2 class="text-lg text-gray-900 title-font font-semibold mb-0 dark:text-gray-200">
                    Grilled Barbecue
                  </h2>
                  <h3 class="tracking-widest text-xs title-font text-primary mb-2 font-medium">
                    SUBTITLE
                  </h3>
                  <p class="text-base ">
                    Fingerstache flexitarian street art 8-bit waistcoat. Distillery
                    hexagon disrupt edison bulbche.
                  </p>
                </div>
              </div>
            </div>
          </div> --}}
        </div>
      </section>


    <ul class="flex flex-wrap mx-auto">
        @foreach ($posts as $post)
            <li class="my-1 basis-1/4 md:basis-1/3">
                <a href="{{ route('blog.show', $post->slug) }}" class="group block max-w-xs mx-auto rounded-lg p-6 bg-white ring-1 ring-slate-900/5 shadow-lg space-y-3 hover:bg-sky-500 hover:ring-sky-500">
                    <div class="items-center space-x-3">
                      <svg class="h-6 w-6 stroke-sky-500 group-hover:stroke-white" fill="none" viewBox="0 0 24 24"><path d="M399.3,168.9c-0.7-2.9-2-5-3.5-6.8l-83.7-91.7c-1.9-2.1-4.1-3.1-6.6-4.4c-2.9-1.5-6.1-1.6-9.4-1.6H136.2
                        c-12.4,0-23.7,9.6-23.7,22.9v335.2c0,13.4,11.3,25.9,23.7,25.9h243.1c12.4,0,21.2-12.5,21.2-25.9V178.4
                        C400.5,174.8,400.1,172.2,399.3,168.9z M305.5,111l58,63.5h-58V111z M144.5,416.5v-320h129v81.7c0,14.8,13.4,28.3,28.1,28.3h66.9
                        v210H144.5z"/></svg>
                      <h3 class="text-slate-900 group-hover:text-white text-sm font-semibold">{{ $post->title }}</h3>
                      <p class="text-slate-700 group-hover:text-white text-sm font-wei400">{{ $post->description }}</p>
                    </div>
                </a>
            </li>
        @endforeach
    </ul>
<hr class="my-6">
    <div class="flex flex-wrap">
        <div class="p-4 md:w-1/2 xl:w-1/4">
          <div class="bg-gray-50 dark:bg-gray-900">
            <a href="#">
              <img
                alt="No alt"
                src="https://res.cloudinary.com/dpatgkgqs/image/upload/v1647761892/illustrations/undraw_hamburger_-8-ge6_fdrl5l.svg"
                class="h-40 rounded w-full object-cover object-center mb-2 xl:mb-0 "
              />
                </a>
            <div class="p-6 rounded-lg dark:divide-undefined">
              <h2 class="text-lg text-gray-900 title-font mb-0 font-heading font-semibold dark:divide-undefined dark:divide-undefined dark:text-gray-200">
                Ceviche de palmito
              </h2>
              <h3 class="tracking-widest text-xs font-medium title-font text-primary mb-2">
                SUBTITLE
              </h3>
              <p class=" ">
                Fingerstache flexitarian street art 8-bit waistcoat. Distillery
                hexagon disrupt edison bulbche.
              </p>
            </div>
          </div>
        </div>
        <div class="p-4 md:w-1/2 xl:w-1/4">
          <div class="bg-gray-50 dark:bg-gray-900">
            <img
              alt="No alt"
              src="https://res.cloudinary.com/dpatgkgqs/image/upload/v1647761950/illustrations/undraw_barbecue_3x93_nfyxu8.svg"
              class="h-40 rounded w-full object-cover object-center mb-2 xl:mb-0 "
            />
            <div class="p-6 rounded-lg dark:divide-undefined">
              <h2 class="text-lg text-gray-900 title-font mb-0 font-semibold dark:text-gray-200 dark:divide-undefined">
                Chicken spaghetti
              </h2>
              <h3 class="tracking-widest text-xs font-medium title-font text-primary mb-2">
                SUBTITLE
              </h3>
              <p class=" ">
                Fingerstache flexitarian street art 8-bit waistcoat. Distillery
                hexagon disrupt edison bulbche.
              </p>
            </div>
          </div>
        </div>
        <div class="p-4 md:w-1/2 xl:w-1/4">
          <div class="bg-gray-50 dark:bg-gray-900">
            <img
              alt="No alt"
              src="https://res.cloudinary.com/dpatgkgqs/image/upload/v1647761973/illustrations/undraw_breakfast_psiw_u0zaea.svg"
              class="h-40 rounded w-full object-cover object-center mb-2 xl:mb-0 "
            />
            <div class="p-6 rounded-lg dark:divide-undefined">
              <h2 class="text-lg text-gray-900 title-font font-semibold mb-0 dark:text-gray-200">
                Green Salad
              </h2>
              <h3 class="tracking-widest text-xs font-medium title-font text-primary mb-2">
                SUBTITLE
              </h3>
              <p class=" ">
                Fingerstache flexitarian street art 8-bit waistcoat. Distillery
                hexagon disrupt edison bulbche.
              </p>
            </div>
          </div>
        </div>
        <div class="p-4 md:w-1/2 xl:w-1/4">
          <div class="bg-gray-50 dark:bg-gray-900">
            <img
              alt="No alt"
              src="https://res.cloudinary.com/dpatgkgqs/image/upload/v1647762002/illustrations/undraw_cooking_lyxy_bjjdig.svg"
              class="h-40 rounded w-full object-cover object-center mb-2 xl:mb-0 "
            />
            <div class="p-6 rounded-lg dark:divide-undefined">
              <h2 class="text-lg text-gray-900 title-font font-semibold mb-0 dark:text-gray-200">
                Grilled Barbecue
              </h2>
              <h3 class="tracking-widest text-xs title-font text-primary mb-2 font-medium">
                SUBTITLE
              </h3>
              <p class="text-base ">
                Fingerstache flexitarian street art 8-bit waistcoat. Distillery
                hexagon disrupt edison bulbche.
              </p>
            </div>
          </div>
            </div>
</div>
@endsection
