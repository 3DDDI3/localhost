<style>
    @font-face {
        font-family: 'Inter';
        font-weight: 100;
        font-style: normal;
        src: url('{{ public_path('/fonts/Inter/Inter-Thin-BETA.otf') }}');
    }

    @font-face {
        font-family: 'Inter';
        font-weight: 200;
        font-style: normal;
        src: url('{{ public_path('/fonts/Inter/Inter-ExtraLight-BETA.otf') }}');
    }

    @font-face {
        font-family: 'Inter';
        font-weight: 250;
        font-style: normal;
        src: url('{{ public_path('/fonts/Inter/Inter-ExtraLight.ttf') }}');
    }

    @font-face {
        font-family: 'Inter';
        font-weight: 300;
        font-style: normal;
        src: url('{{ public_path('/fonts/Inter/Inter-Light.ttf') }}');
    }

    @font-face {
        font-family: 'Inter';
        font-weight: 400;
        font-style: normal;
        src: url('{{ public_path('/fonts/Inter/Inter-Regular.ttf') }}');
    }


    @font-face {
        font-family: 'Inter';
        font-weight: 500;
        font-style: normal;
        src: url('{{ public_path('/fonts/Inter/Inter-Medium.ttf') }}');
    }

    @font-face {
        font-family: 'Inter';
        font-weight: 600;
        font-style: normal;
        src: url('{{ public_path('/fonts/Inter/Inter-SemiBold.ttf') }}');
    }

    @font-face {
        font-family: 'Inter';
        font-weight: 700;
        font-style: normal;
        src: url('{{ public_path('/fonts/Inter/Inter-Bold.ttf') }}');
    }

    @font-face {
        font-family: 'Inter';
        font-weight: 800;
        font-style: normal;
        src: url('{{ public_path('/fonts/Inter/Inter-ExtraBold.ttf') }}');
    }

    @font-face {
        font-family: 'Inter';
        font-weight: 900;
        font-style: normal;
        src: url('{{ public_path('/fonts/Inter/Inter-Black.ttf') }}');
    }


    @font-face {
        font-family: 'HelveticaNeueCyr';
        font-weight: 100;
        font-style: normal;
        src: url('{{ public_path('/fonts/Helveticaneuecyr/helveticaneuecyr-thin.ttf') }}');
    }

    @font-face {
        font-family: 'HelveticaNeueCyr';
        font-weight: 200;
        font-style: normal;
        src: url('{{ public_path('/fonts/Helveticaneuecyr/helveticaneuecyr-ultralight.ttf') }}');
    }

    @font-face {
        font-family: 'HelveticaNeueCyr';
        font-weight: 300;
        font-style: normal;
        src: url('{{ public_path('/fonts/Helveticaneuecyr/helveticaneuecyr-light.ttf') }}');
    }

    @font-face {
        font-family: 'HelveticaNeueCyr';
        font-weight: 400;
        font-style: normal;
        src: url('{{ public_path('/fonts/Helveticaneuecyr/helveticaneuecyr-roman.ttf') }}');
    }

    @font-face {
        font-family: 'HelveticaNeueCyr';
        font-weight: 550;
        font-style: normal;
        src: url('{{ public_path('/fonts/Helveticaneuecyr/helveticaneuecyr-medium.ttf') }}');
    }


    @font-face {
        font-family: 'HelveticaNeueCyr';
        font-weight: 700;
        font-style: normal;
        src: url('{{ public_path('/fonts/Helveticaneuecyr/helveticaneuecyr-bold.ttf') }}');
    }

    @font-face {
        font-family: 'HelveticaNeueCyr';
        font-weight: 900;
        font-style: normal;
        src: url('{{ public_path('/fonts/Helveticaneuecyr/helveticaneuecyr-black.ttf') }}');
    }
</style>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>PDF</title>
    <link rel="stylesheet" href="{{ asset('/css/tour.css') }}?v={{ sha1_file(public_path() . '/css/tour.css') }}">
</head>

<style>
    .program__day {
        color: #342635;
        font-family: 'Inter', sans-serif;
        font-size: 15px;
        font-weight: 700;
    }

    .program__title {
        flex-grow: .8;
        font-family: 'Inter', sans-serif;
        font-size: 15px;
        font-weight: 700;
        color: #342635;
    }

    .text {
        font-family: 'Inter', sans-serif;
    }
</style>

<body>
    <table style="width: 100%">
        <tr>
            <td style="width: 30%">
                <img style="width: 200px" src="{{ public_path('images/logo.svg') }}" alt="">
            </td>
            <td style="width: 70%; text-align: right" class="program__title">ООО “ Туристическая фирма «МЕРКУРИЙ»”<br>
                Санкт-Петербург, 7-я Красноармейская, 7<br>
                Телефон: (812) 702 7785 / 715 9241<br>
                E-mail: res@italy-spb.ru</td>
        </tr>
    </table>

    <h1 class="text" style="text-align: center">{{ $tour->title }}</h1>

    <div class="text" style="text-align: center"> {!! html_entity_decode($tour->description) !!}</div>

    <h1 style="text-align: center;" class="text">Программа</h1>

    <table style="margin-top:30px; width: 100%">
        @foreach ($tour->programs()->orderBy('day', 'asc')->get() as $program)
            <tr>
                <td class="text" style="font-weight: 800; width: 30%">{{ $program->day }}</td>
                <td class="text" style="width: 70%">{{ $program->title }}</td>
            </tr>
            <tr>
                <td style="width: 30%"></td>
                <td style="width: 70%" class="text">
                    {!! html_entity_decode($program->text) !!}
                </td>
            </tr>
        @endforeach
    </table>
</body>

</html>
