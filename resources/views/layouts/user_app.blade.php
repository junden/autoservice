<!DOCTYPE html>
<html>
<head>
    <title>{{$content_page->meta_title}}</title>
    <!--meta-->
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.2" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="keywords" content="{{$content_page->kwords}}" />
    <meta name="description" content="{{$content_page->meta_description}}" />
    <!--slider revolution-->
    <link rel="stylesheet" type="text/css" href="rs-plugin/css/settings.css" media="screen" />
    <!--style-->
    <link href='//fonts.googleapis.com/css?family=Open+Sans:300,300italic,400,600,700,800&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="style/reset.css">
    <link rel="stylesheet" type="text/css" href="style/superfish.css">
    <link rel="stylesheet" type="text/css" href="style/prettyPhoto.css">
    <link rel="stylesheet" type="text/css" href="style/jquery.qtip.css">
    <link rel="stylesheet" type="text/css" href="style/style.css">
    <link rel="stylesheet" type="text/css" href="style/animations.css">
    <link rel="stylesheet" type="text/css" href="style/responsive.css">
    <link rel="stylesheet" type="text/css" href="style/odometer-theme-default.css">
    <!--fonts-->
    <link rel="stylesheet" type="text/css" href="fonts/streamline-small/style.css">
    <link rel="stylesheet" type="text/css" href="fonts/template/styles.css">
    <link rel="stylesheet" type="text/css" href="fonts/social/styles.css">
    <link rel="shortcut icon" href="images/favicon.ico">
</head>
<body>
<div class="site-container">
    <div class="header-top-bar-container clearfix">
        <div class="header-top-bar">
            <ul class="contact-details clearfix">
                <li class="template-phone">
                    +38(---) --- ----
                </li>
                <li class="template-mail">
                    <a href="mailto:carservice@mail.com">carservice@mail.com</a>
                </li>
                <li class="template-clock">
                    Пн - Пт: 8:00 - 20:00
                </li>
            </ul>
            <ul class="social-icons">
                <li>
                    <a target="_blank" href="#" class="social-facebook" title="facebook"></a>
                </li>
                <li>
                    <a target="_blank" href="#" class="social-twitter" title="twitter"></a>
                </li>
                <li>
                    <a href="#" class="social-pinterest" title="pinterest"></a>
                </li>
            </ul>
        </div>
        <a href="/" class="header-toggle template-arrow-up"></a>
    </div>
    <div class="header-container">
        <!--<div class="header-container sticky">-->
        <div class="vertical-align-table column-1-1">
            <div class="header clearfix">
                <div class="logo vertical-align-cell">
                    <h1><a href="/" title="CarService">CARSERVICE</a></h1>
                </div>
                <a href="#" class="mobile-menu-switch vertical-align-cell">
                    <span class="line"></span>
                    <span class="line"></span>
                    <span class="line"></span>
                </a>
                <div class="menu-container clearfix vertical-align-cell">
                    <nav>
                        <ul class="sf-menu">
                            @foreach($posts as $post)
                                @php $childs=$post->child_pages() @endphp
                            <li class="selected @if($childs->isNotEmpty()) " data-toggle="dropdown" @endif">
                                <a href="{{$post->url}}" @if($childs->isNotEmpty()) title="Главная"
                                   class="dropdown-toggle" data-toggle="dropdown"  @endif>{{$post->title}}
                                </a>
                                @if($childs->isNotEmpty())
                                <ul>
                                    @foreach($post->child_pages() as $child)
                                    <li>
                                        <a href="{{$child->url}}">
                                            {{$child->title}}
                                        </a>
                                    </li>
                                    @endforeach
                                </ul>
                                @endif
                            </li>
                            @endforeach
                        </ul>
                    </nav>
                    <div class="mobile-menu-container">
                        <div class="mobile-menu-divider"></div>
                        <nav>
                            <ul class="mobile-menu collapsible-mobile-submenus">
                                <li class="selected">
                                    <a href="index.html" title="Home">
                                        Home
                                    </a>
                                </li>
                                <li>
                                    <a href="services.html" title="Services">
                                        Services
                                    </a>
                                    <a href="#" class="template-arrow-menu"></a>
                                    <ul>
                                        <li>
                                            <a href="service_engine_diagnostics.html" title="Engine Diagnostics">
                                                Engine Diagnostics
                                            </a>
                                        </li>
                                        <li>
                                            <a href="service_lube_oil_filters.html" title="Lube, Oil and Filters">
                                                Lube, Oil and Filters
                                            </a>
                                        </li>
                                        <li>
                                            <a href="service_belts_hoses.html" title="Belts and Hoses">
                                                Belts and Hoses
                                            </a>
                                        </li>
                                        <li>
                                            <a href="service_air_conditioning.html" title="Air Conditioning">
                                                Air Conditioning
                                            </a>
                                        </li>
                                        <li>
                                            <a href="service_brake_repair.html" title="Brake Repair">
                                                Brake Repair
                                            </a>
                                        </li>
                                        <li>
                                            <a href="service_tire_wheel.html" title="Tire and Wheel Services">
                                                Tire and Wheel Services
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="galleries.html" title="Gallery">
                                        Gallery
                                    </a>
                                    <a href="#" class="template-arrow-menu"></a>
                                    <ul>
                                        <li>
                                            <a href="gallery_engine_diagnostics.html" title="Engine Diagnostics">
                                                Engine Diagnostics
                                            </a>
                                        </li>
                                        <li>
                                            <a href="gallery_oil_change.html" title="Oil Change">
                                                Oil Change
                                            </a>
                                        </li>
                                        <li>
                                            <a href="gallery_belts_hoses.html" title="Belts and Hoses">
                                                Belts and Hoses
                                            </a>
                                        </li>
                                        <li>
                                            <a href="gallery_tire_change.html" title="Tire Change">
                                                Tire Change
                                            </a>
                                        </li>
                                        <li>
                                            <a href="gallery_wheel_services.html" title="Wheel Services">
                                                Wheel Services
                                            </a>
                                        </li>
                                        <li>
                                            <a href="gallery_lube_services.html" title="Lube Services">
                                                Lube Services
                                            </a>
                                        </li>
                                        <li>
                                            <a href="gallery_brake_repair.html" title="Brake Repair">
                                                Brake Repair
                                            </a>
                                        </li>
                                        <li>
                                            <a href="gallery_other_car_services.html" title="Other Car Services">
                                                Other Car Services
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="about.html" title="Pages">
                                        Pages
                                    </a>
                                    <a href="#" class="template-arrow-menu"></a>
                                    <ul>
                                        <li>
                                            <a href="about.html" title="About">
                                                About
                                            </a>
                                        </li>
                                        <li>
                                            <a href="404.html" title="404 Not Found">
                                                404 Not Found
                                            </a>
                                        </li>
                                        <li>
                                            <a href="services.html" title="Services">
                                                Services
                                            </a>
                                        </li>
                                        <li>
                                            <a href="service_engine_diagnostics.html" title="Single Service">
                                                Single Service
                                            </a>
                                        </li>
                                        <li>
                                            <a href="galleries.html" title="Galleries">
                                                Galleries
                                            </a>
                                        </li>
                                        <li>
                                            <a href="gallery_engine_diagnostics.html" title="Single Project">
                                                Single Gallery
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="blog.html" title="Blog">
                                        Blog
                                    </a>
                                    <a href="#" class="template-arrow-menu"></a>
                                    <ul>
                                        <li>
                                            <a href="blog.html" title="Blog">
                                                Blog
                                            </a>
                                        </li>
                                        <li>
                                            <a href="blog_left_sidebar.html" title="Blog">
                                                Blog Left Sidebar
                                            </a>
                                        </li>
                                        <li>
                                            <a href="blog_2_columns.html" title="Blog 2 Columns">
                                                Blog 2 Columns
                                            </a>
                                        </li>
                                        <li>
                                            <a href="post.html" title="Single Post">
                                                Single Post
                                            </a>
                                        </li>
                                        <li>
                                            <a href="search.html?s=ipsum" title="Search Template">
                                                Search Template
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="appointment.html" title="Appointment">
                                        Appointment
                                    </a>
                                </li>
                                <li class="left-flyout">
                                    <a href="contact.html" title="Contact">
                                        Contact
                                    </a>
                                    <a href="#" class="template-arrow-menu"></a>
                                    <ul>
                                        <li>
                                            <a href="contact.html" title="Contact Style 1">
                                                Contact Style 1
                                            </a>
                                        </li>
                                        <li>
                                            <a href="contact_2.html" title="Contact Style 2">
                                                Contact Style 2
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>

<!--Header HTML Ends Here-->
@yield('user_content')

<!-- Footer  HTML Starts Here-->
    <div class="row dark-gray footer-row full-width padding-top-30 padding-bottom-50">
        <div class="row padding-bottom-30">
            <div class="column column-1-3">
                <ul class="contact-details-list">
                    <li class="sl-small-location-map">
                        <p>просп.Карла Маркса 63</p>
                    </li>
                </ul>
            </div>
            <div class="column column-1-3">
                <ul class="contact-details-list">
                    <li class="sl-small-phone-circle">
                        <p>Бесплатные звонки<br>
                            +38(---) --- ----</p>
                    </li>
                </ul>
            </div>
            <div class="column column-1-3">
                <ul class="contact-details-list">
                    <li class="sl-small-truck-tow">
                        <p>Помощь на дороге 24/7<br>
                            +38(---) --- ----</p>
                    </li>
                </ul>
            </div>
        </div>
        <div class="row row-4-4 top-border page-padding-top">
            <div class="column column-1-4">
                <h6 class="box-header">О НАС</h6>
                <ul class="list simple margin-top-20">
                    <li>Украина, Днипро</li>
                    <li>просп.Карла Маркса 63</li>
                    <li><span>Моб:</span>+38(---) --- ----</li>
                    <li><span>E-mail:</span><a href="mailto:carservice@mail.com">carservice@mail.com</a></li>
                </ul>
                <ul class="social-icons gray margin-top-26">
                    <li>
                        <a target="_blank" href="http://facebook.com/QuanticaLabs" class="social-facebook" title="facebook"></a>
                    </li>
                    <li>
                        <a target="_blank" href="https://twitter.com/QuanticaLabs" class="social-twitter" title="twitter"></a>
                    </li>
                    <li>
                        <a target="_blank" href="http://themeforest.net/user/QuanticaLabs/portfolio?ref=QuanticaLabs" class="social-linkedin" title="linkedin"></a>
                    </li>
                    <li>
                        <a href="https://pinterest.com/quanticalabs/" class="social-pinterest" title="pinterest"></a>
                    </li>
                </ul>
            </div>
            <div class="column column-1-4">
                <h6 class="box-header">НАШИ УСЛУГИ</h6>
                <ul class="list margin-top-20">
                    <li class="template-bullet">Диагностика двигателя</li>
                    <li class="template-bullet">Покраска</li>
                    <li class="template-bullet">Ремонт бамперов</li>
                    <li class="template-bullet">Ремонт кондиционера</li>
                    <li class="template-bullet">Ремонт тормозов</li>
                    <li class="template-bullet">Шины и колеса</li>
                    <li class="template-bullet">Страхование авто</li>

                </ul>
            </div>

            <div class="column column-1-4">
                <h6 class="box-header">ЧАСЫ РАБОТЫ</h6>
                <ul class="list simple margin-top-20">
                    <li><span>Понедельник:</span>8:00 - 20:00</li>
                    <li><span>Вторник:</span>8:00 - 20:00</li>
                    <li><span>Среда:</span>8:00 - 20:00</li>
                    <li><span>Четверг:</span>8:00 - 20:00</li>
                    <li><span>Пятница:</span>8:00 - 20:00</li>
                    <li><span>Суббота:</span>9:00 - 18:00</li>
                    <li><span>Воскресенье:</span>Выходной</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="row align-center padding-top-bottom-30">
        <span class="copyright">© Copyright 2017</span>
    </div>
</div>
<a href="#top" class="scroll-top animated-element template-arrow-up" title="Scroll to top"></a>
<div class="background-overlay"></div>
<!--js-->

<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="js/jquery-migrate-1.4.1.min.js"></script>
<!--slider revolution-->
<script type="text/javascript" src="rs-plugin/js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript" src="rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<script type="text/javascript" src="js/jquery.ba-bbq.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.11.4.custom.min.js"></script>
<script type="text/javascript" src="js/jquery.ui.touch-punch.min.js"></script>
<script type="text/javascript" src="js/jquery.isotope.min.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.min.js"></script>
<script type="text/javascript" src="js/jquery.carouFredSel-6.2.1-packed.js"></script>
<script type="text/javascript" src="js/jquery.touchSwipe.min.js"></script>
<script type="text/javascript" src="js/jquery.transit.min.js"></script>
<script type="text/javascript" src="js/jquery.hint.min.js"></script>
<script type="text/javascript" src="js/jquery.costCalculator.min.js"></script>
<script type="text/javascript" src="js/jquery.parallax.min.js"></script>
<script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
<script type="text/javascript" src="js/jquery.qtip.min.js"></script>
<script type="text/javascript" src="js/jquery.blockUI.min.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript" src="js/odometer.min.js"></script>
<!-- Footer HTML Ends Here-->
</body>
</html>
