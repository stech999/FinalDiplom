<!-- resources/views/auth/passwords/email.blade.php -->
@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Сброс пароля</h1>
    <form method="POST" action="{{ route('password.email') }}">
        @csrf
        <div class="form-group">
            <label for="email">Электронная почта</label>
            <input type="email" name="email" id="email" class="form-control" required>
        </div>
        <button type="submit" class="btn btn-primary">Отправить ссылку на сброс пароля</button>
    </form>
</div>
@endsection
