<section class="section section7" id="s7">
    <div class="section__img"><img src="/images/s7/map.png" alt="" /></div>
</section>
<section class="section section8" id="s8">
    <div class="section__img"><img src="/images/s7/footer.png" alt="" /></div>
    <div class="section__content">
        <div class="container">
            <h2 class="colorfull">{!! $texts[6]->title !!}</h2>
            <div class="row-2">
                <div class="col">
                    <p>{!! $setting->address !!}</p>
                    <button class="btn _open" for="apf">Contact us</button>
                </div>
                <div class="col">
                    <div class="flex-col gap-10 section8_data">
                        <a class="colorfull" href="mailto:{!! $setting->email !!}">{!! $setting->email !!} </a>
                        <a class="colorfull" href="tel:{!! $setting->phone2 !!}">{!! $setting->phone2 !!} </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer class="main-footer">
        @php
            $curYear = date('Y');
        @endphp
        <div class="container">© {{ $curYear }} Сотис</div>
    </footer>
</section>
