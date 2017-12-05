
@extends('layouts.user_app')
@section('user_content')

<!-- Content HTML Starts Here-->
{!!$content_page->description!!}
<section class="content paddingTop">
    {{--<div class="innerBanner"></div>--}}
    <div class="container" style="margin-bottom: 2px">
        <div class="row">
            <div class="col-lg-12">
                {{--<div class="innerpagecontainer">--}}
                    {{--<h1>Standard <span>Form</span></h1>--}}
                    {{--<p>Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora--}}
                        {{--torquent per conubia nostra, per inceptos himenaeos. Sed non mauris vitae erat consequat auctor--}}
                        {{--eu in elit. Class aptent taciti sociosqu ad litora torquent. </p>--}}

                    {{--<div class="row">--}}
                        {{--<div class="col-lg-12">--}}
                            {{--<div class="address">--}}
                                {{--<div class="lftblock">--}}
                                    {{--<h4>Address</h4>--}}
                                    {{--<p>Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti--}}
                                        {{--sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. </p>--}}
                                    {{--<div class="fullwidth">--}}
                                        {{--<em>Lorem Ipsum Dolor 512,<br>--}}
                                            {{--1030 Auctor Odio,<br>--}}
                                            {{--Ballana, Sullar</em>--}}
                                        {{--<em>--}}
                                            {{--<ul>--}}
                                                {{--<li class="first"><i class="fa fa-phone">&nbsp;</i></li>--}}
                                                {{--<li><b>012 345 67890 </b></li>--}}
                                            {{--</ul>--}}
                                            {{--<ul>--}}
                                                {{--<li class="first"><i class="fa fa-envelope">&nbsp;</i></li>--}}
                                                {{--<li><a href="mailto:info@privatecollection.com">--}}
                                                        {{--info@privatecollection.com</a></li>--}}
                                            {{--</ul>--}}
                                        {{--</em>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="rightblock">--}}
                                    {{--<img src="images/img2.jpg" alt="" class="img-responsive">--}}
                                {{--</div>--}}
                            {{--</div>--}}

                            {{--<div class="message-bar">--}}
                                	{{--<span class="pos">--}}
                                    	{{--This is the Message Bar. All important messages would be displayed here.--}}
                                    {{--</span>--}}
                            {{--</div>--}}
                        {{--</div>--}}
                    {{--</div>--}}


                    {{--<div class="row">--}}
                        <div class="col-lg-12">
                            @include('user.callback')
                        </div>
                    {{--</div>--}}
                {{--</div>--}}
            </div>
        </div>
    </div>
</section>
@endsection



