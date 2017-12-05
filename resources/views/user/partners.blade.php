<div class="partners">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2 class="heading">Специальное предложение</h2>
            </div>
            <div class="col-xs-12">
                <div class="row">
                    <nav>
                        <ul>
                            @foreach($offers as $offer)
                            <li class="col-md-2 col-sm-3 col-xs-6"><a href="{{$offer->url}}"><img src="{{$offer->special_images}}" alt="" class="img-responsive"></a>{{$offer->title}}</li>
                            @endforeach
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>