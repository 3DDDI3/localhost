@extends('layouts.default')

@section('head')
    <link rel="stylesheet" href="{{ asset('/css/main.css') }}?v={{ sha1_file(public_path() . '/css/main.css') }}">
@endsection

@section('content')
    <main>
        <div class="error-message">
            {{ $exception->getMessage() }}
        </div>
    </main>
@endsection
