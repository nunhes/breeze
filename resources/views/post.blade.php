@extends('layout')

@section('content')
    {{-- <h1>Contenido de Post</h1> --}}

    <h1 class="text-3xl py-3 underline">{{ $post->title }}</h1>
    <h5 class="text-weight-400 py-3">{{ $post->description }}</h5>
    {{ $post->post }}
@endsection
