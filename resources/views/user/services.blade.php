

    {{--<div class="row">--}}
        {{--@foreach($services as $service)--}}
        {{--<h2 class="box-header">РЕМОНТНЫЕ УСЛУГИ</h2>--}}
        {{--<p class="description align-center">--}}
            {{--Мы предлагаем полный спектр гаражных услуг для владельцев автомобилей.<br>--}}
            {{--Наши специалисты знают, как обращаться с широким спектром автосервисов.</p>--}}
        {{--<ul class="services-list clearfix page-margin-top">--}}
            {{--<li>--}}
                {{--<a href="{{$service->url}}">--}}
                    {{--<img src="{{$service->special_images}}" alt="">--}}
                {{--</a>--}}
                {{--<h4 class="box-header"><a href="{{$service->url}}" title="Engine Diagnostics">{!! $service->preview !!}<span class="template-arrow-menu"></span></a></h4>--}}
            {{--</li>--}}
        {{--</ul>--}}
        {{--@endforeach--}}
    {{--</div>--}}

    <div class="row full-width page-padding-top-section">
        <div class="row">
            <h2 class="box-header">РЕМОНТНЫЕ УСЛУГИ</h2>
            <p class="description align-center">
                Мы предлагаем полный спектр гаражных услуг для владельцев автомобилей.<br>
                Наши специалисты знают, как обращаться с широким спектром автосервисов.</p>
            <ul class="services-list clearfix page-margin-top">
                @foreach($services as $service)
                <li>
                    <a href="{{$service->url}}" title="Engine Diagnostics">
                        <img src="{{$service->special_images}}" alt="">
                    </a>
                    <h4 class="box-header"><a href="{{$service->url}}">{!! $service->preview !!}</a></h4>
                </li>
                @endforeach
            </ul>
        </div>
    </div>



