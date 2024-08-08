<section class="section section4" id="s4">
    <div class="section__content">
        <div class="container">
            <div class="row-2">
                <div class="col ls">
                    <h2>{!! $texts[3]->title !!}</h2>
                    <img src="/images/circles.png" alt="" />
                </div>
                <div class="col rs">
                    <div class="row-2">
                        @foreach ($specs as $key => $item)
                            @if (!$item->hide)
                                @if (count($specs) - 2 <= $key)
                                    <div class="col m0 top-line">{!! $item->title !!}</div>
                                @else
                                    <div class="col top-line">{!! $item->title !!}</div>
                                @endif
                            @endif
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
