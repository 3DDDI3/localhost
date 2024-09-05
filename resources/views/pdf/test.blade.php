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
        src: url('public_path("/fonts/Inter/Inter-SemiBold.ttf")');
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
        src: url('public_path("/fonts/Inter/Inter-ExtraBold.ttf")');
    }

    @font-face {
        font-family: 'Inter';
        font-weight: 900;
        font-style: normal;
        src: url('public_path("/fonts/Inter/Inter-Black.ttf")');
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
        font-size: 26px;
        font-weight: 700;
        line-height: 31.47px;
        letter-spacing: -0.04em;
    }

    .program__title {
        flex-grow: .8;
        font-family: 'Inter', sans-serif;
        font-size: 28px;
        font-weight: 300;
        line-height: 33.89px;
        letter-spacing: -0.03em;
        color: #342635;
    }
</style>

<body>
    <div class="program__title div">
        <span style="width: 50%">title</span>
        <span style="width:50%">subtitle</span>
    </div>
</body>

</html>
