<x-mail::message>

<h1 style="text-align: center">Пользователь зарегистрировался в системе:</h1> 

<x-mail::table>
| Имя                |      Телефон        |          Адрес      |     Текст          |
| -------------------|---------------------|---------------------|--------------------|
| {{$agent->name}}   | {{$agent->phone}}   | {{$agent->email}}   | {{$agent->text}}   |
</x-mail::table>

@php
    // $url = config('app.url') . '/admin/requests?search=' . $request->name;
@endphp

<x-mail::button :$url>
    Перейти к заявке
</x-mail::button>

</x-mail::message>