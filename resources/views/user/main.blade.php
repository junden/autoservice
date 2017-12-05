@extends('layouts.user_app')

@section('user_content')

    <div class="revolution-slider-container">
        <div class="revolution-slider">
            <ul style="display: none;">
                <!-- SLIDE 1 -->
                <li data-transition="fade" data-masterspeed="500" data-slotamount="1" data-delay="6000">
                    <!-- MAIN IMAGE -->
                    <img src="images/slider/image_01.jpg" alt="slidebg1" data-bgfit="cover">
                    <!-- LAYERS -->
                    <!-- LAYER 01 -->
                    <div class="tp-caption"
                         data-frames='[{"delay":500,"speed":1200,"from":"y:-40;o:0;","ease":"easeInOutExpo"},{"delay":"wait","speed":500,"to":"o:0;","ease":"easeInOutExpo"}]'
                         data-x="center"
                         data-y="97"
                    >
                        <!--data-start="500"
                        data-transform_in="x:0;y:-40;o:0;s:1200;e:easeInOutExpo;"
                        data-transform_out="x:0;y:0;o:0;s:500;e:easeInOutExpo;"-->

                        <div class="hexagon"><div class="sl-small-car-oil"></div></div>
                    </div>
                    <!-- LAYER 02 -->
                    <div class="tp-caption"
                         data-frames='[{"delay":900,"speed":1200,"from":"y:40;o:0;","ease":"easeInOutExpo"},{"delay":"wait","speed":500,"to":"o:0;","ease":"easeInOutExpo"}]'
                         data-x="center"
                         data-y="262"
                    >
                        <!--data-start="900"
                        data-transform_in="x:0;y:40;o:0;s:1200;e:easeInOutExpo;"
                        data-transform_out="x:0;y:0;o:0;s:500;e:easeInOutExpo;"-->

                        <h2>MAKE YOUR CAR LAST LONGER</h2>
                    </div>
                    <!-- LAYER 03 -->
                    <div class="tp-caption"
                         data-frames='[{"delay":1100,"speed":1200,"from":"y:40;o:0;","ease":"easeInOutExpo"},{"delay":"wait","speed":500,"to":"o:0;","ease":"easeInOutExpo"}]'
                         data-x="center"
                         data-y="343"
                    >
                        <!--data-start="1100"
                        data-transform_in="x:0;y:40;o:0;s:1200;e:easeInOutExpo;"
                        data-transform_out="x:0;y:0;o:0;s:500;e:easeInOutExpo;"-->

                        <p class="description">Бесплатная замена масла, 25 декабря. Только если у вас есть «5» на вашем номерном знаке.</p>
                    </div>
                    <!-- LAYER 04 -->
                    <div class="tp-caption"
                         data-frames='[{"delay":1300,"speed":1200,"from":"y:40;o:0;","ease":"easeInOutExpo"},{"delay":"wait","speed":500,"to":"o:0;","ease":"easeInOutExpo"}]'
                         data-x="center"
                         data-y="441"
                    >
                        <!--data-start="1300"
                        data-transform_in="x:0;y:40;o:0;s:1200;e:easeInOutExpo;"
                        data-transform_out="x:0;y:0;o:0;s:500;e:easeInOutExpo;"-->
                    </div>
                    <!-- / -->
                </li>
                <!-- SLIDE 2 -->
                <li data-transition="fade" data-masterspeed="500" data-slotamount="1" data-delay="6000">
                    <!-- MAIN IMAGE -->
                    <img src="images/slider/image_02.jpg" alt="slidebg2" data-bgfit="cover">
                    <!-- LAYERS -->
                    <!-- LAYER 01 -->
                    <div class="tp-caption customin customout"
                         data-frames='[{"delay":500,"speed":1200,"from":"y:-40;o:0;","ease":"easeInOutExpo"},{"delay":"wait","speed":500,"to":"o:0;","ease":"easeInOutExpo"}]'

                         data-x="center"
                         data-y="97"
                    >
                        <!--data-start="500"
                        data-transform_in="x:0;y:-40;o:0;s:1200;e:easeInOutExpo;"
                        data-transform_out="x:0;y:0;o:0;s:500;e:easeInOutExpo;"-->

                        <div class="hexagon"><div class="sl-small-car"></div></div>
                    </div>
                    <!-- LAYER 02 -->
                    <div class="tp-caption customin customout"
                         data-frames='[{"delay":900,"speed":1200,"from":"y:40;o:0;","ease":"easeInOutExpo"},{"delay":"wait","speed":500,"to":"o:0;","ease":"easeInOutExpo"}]'

                         data-x="center"
                         data-y="262"
                    >
                        <!--data-start="900"
                        data-transform_in="x:0;y:40;o:0;s:1200;e:easeInOutExpo;"
                        data-transform_out="x:0;y:0;o:0;s:500;e:easeInOutExpo;"-->

                        <h2>
                                НАЙДИТЕ ШИНЫ, КОТОРЫЕ МОГУТ УДОВЛЕТВОРИТЬ ВАШИ ПОТРЕБНОСТИ</h2>
                    </div>
                    <!-- LAYER 03 -->
                    <div class="tp-caption customin customout"
                         data-frames='[{"delay":1100,"speed":1200,"from":"y:40;o:0;","ease":"easeInOutExpo"},{"delay":"wait","speed":500,"to":"o:0;","ease":"easeInOutExpo"}]'

                         data-x="center"
                         data-y="343"
                    >
                        <!--data-start="1100"
                        data-transform_in="x:0;y:40;o:0;s:1200;e:easeInOutExpo;"
                        data-transform_out="x:0;y:0;o:0;s:500;e:easeInOutExpo;"-->

                        <p class="description">Воспользуйтесь нашими самыми низкими ценами, которые автоматически включают купоны.</p>
                    </div>
                    <!-- LAYER 04 -->
                    <div class="tp-caption customin customout"
                         data-frames='[{"delay":1300,"speed":1200,"from":"y:40;o:0;","ease":"easeInOutExpo"},{"delay":"wait","speed":500,"to":"o:0;","ease":"easeInOutExpo"}]'

                         data-x="center"
                         data-y="441"
                    >
                        <!--data-start="1300"
                        data-transform_in="x:0;y:40;o:0;s:1200;e:easeInOutExpo;"
                        data-transform_out="x:0;y:0;o:0;s:500;e:easeInOutExpo;"-->
                    </div>
                    <!-- / -->
                </li>

                <!-- SLIDE 3 -->
                <li data-transition="fade" data-masterspeed="500" data-slotamount="1" data-delay="6000">
                    <!-- MAIN IMAGE -->
                    <img src="images/slider/image_03.jpg" alt="slidebg3" data-bgfit="cover">
                    <!-- LAYERS -->
                    <!-- LAYER 01 -->
                    <div class="tp-caption customin customout"
                         data-frames='[{"delay":500,"speed":1200,"from":"y:-40;o:0;","ease":"easeInOutExpo"},{"delay":"wait","speed":500,"to":"o:0;","ease":"easeInOutExpo"}]'

                         data-x="center"
                         data-y="97"
                    >
                        <!--data-start="500"
                        data-transform_in="x:0;y:-40;o:0;s:1200;e:easeInOutExpo;"
                        data-transform_out="x:0;y:0;o:0;s:500;e:easeInOutExpo;"-->

                        <div class="hexagon"><div class="sl-small-car-checklist"></div></div>
                    </div>
                    <!-- LAYER 02 -->
                    <div class="tp-caption customin customout"
                         data-frames='[{"delay":900,"speed":1200,"from":"y:40;o:0;","ease":"easeInOutExpo"},{"delay":"wait","speed":500,"to":"o:0;","ease":"easeInOutExpo"}]'

                         data-x="center"
                         data-y="262"
                    >
                        <!--data-start="900"
                        data-transform_in="x:0;y:40;o:0;s:1200;e:easeInOutExpo;"
                        data-transform_out="x:0;y:0;o:0;s:500;e:easeInOutExpo;"-->

                        <h2>ЭКСПЕРТНЫЕ ТЕХНИКИ, КОНКУРЕНТНЫЕ ЦЕНЫ</h2>
                    </div>
                    <!-- LAYER 03 -->
                    <div class="tp-caption customin customout"
                         data-frames='[{"delay":1100,"speed":1200,"from":"y:40;o:0;","ease":"easeInOutExpo"},{"delay":"wait","speed":500,"to":"o:0;","ease":"easeInOutExpo"}]'

                         data-x="center"
                         data-y="343"
                    >
                        <!--data-start="1100"
                        data-transform_in="x:0;y:40;o:0;s:1200;e:easeInOutExpo;"
                        data-transform_out="x:0;y:0;o:0;s:500;e:easeInOutExpo;"-->

                        <p class="description">Мы стремимся заслужить ваше доверие, предоставляя опыт и ценность, которые вы ожидаете.</p>
                    </div>
                    <!-- LAYER 04 -->
                    <div class="tp-caption customin customout"
                         data-frames='[{"delay":1300,"speed":1200,"from":"y:40;o:0;","ease":"easeInOutExpo"},{"delay":"wait","speed":500,"to":"o:0;","ease":"easeInOutExpo"}]'

                         data-x="center"
                         data-y="441"
                    >
                        <!--data-start="1300"
                        data-transform_in="x:0;y:40;o:0;s:1200;e:easeInOutExpo;"
                        data-transform_out="x:0;y:0;o:0;s:500;e:easeInOutExpo;"-->
                    </div>
                    <!-- / -->
                </li>
            </ul>
        </div>
    </div>
    {!!$content_page->description!!}

    @include('user.services')

    <div class="row full-width top-border page-margin-top-section padding-bottom-50">
        <div class="row">
            <div class="our-clients-list-container page-margin-top">
                <ul class="our-clients-list">
                    <li>
                        <img src="images/logos/logo_01.png" alt="">
                    </li>
                    <li>
                        <img src="images/logos/logo_02.png" alt="">
                    </li>
                    <li>
                        <img src="images/logos/logo_03.png" alt="">
                    </li>
                    <li>
                        <img src="images/logos/logo_04.png" alt="">
                    </li>
                    <li>
                        <img src="images/logos/logo_05.png" alt="">
                    </li>
                    <li>
                        <img src="images/logos/logo_06.png" alt="">
                    </li>
                    <li>
                        <img src="images/logos/logo_06.png" alt="">
                    </li>
                    <li>
                        <img src="images/logos/logo_05.png" alt="">
                    </li>
                    <li>
                        <img src="images/logos/logo_04.png" alt="">
                    </li>
                    <li>
                        <img src="images/logos/logo_03.png" alt="">
                    </li>
                    <li>
                        <img src="images/logos/logo_02.png" alt="">
                    </li>
                    <li>
                        <img src="images/logos/logo_01.png" alt="">
                    </li>
                    <li>
                        <img src="images/logos/logo_04.png" alt="">
                    </li>
                    <li>
                        <img src="images/logos/logo_03.png" alt="">
                    </li>
                    <li>
                        <img src="images/logos/logo_01.png" alt="">
                    </li>
                    <li>
                        <img src="images/logos/logo_05.png" alt="">
                    </li>
                </ul>
                <div class="our-clients-pagination"></div>
            </div>
        </div>
    </div>
@endsection