<!DOCTYPE html >
<html lang="en">
<head>
    <title> Carpool </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--[if lt IE 9]>
    <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="/resources/css/home.css"/>
    <!--Slider-->
    <link rel="stylesheet" type="text/css" href="/resources/css/responsiveslides.css"/>
    <!--end-->
    <link rel="stylesheet" type="text/css" href="/resources/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="/resources/css/jquery-ui.css"/>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="/resources/js/jquery-ui.js"></script>
    <!--Weather-->
    <script type="text/javascript" src="/resources/js/jquery.simpleWeather.min.js"></script>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>

<body>
<header>
    <nav>
        <a id="menu-icon" href=""></a>
        <ul>
            <li> <a href="#home"> CarPool </a> </li>
            <li> <a href="#home"> Home </a> </li>
            <li> <a href="#about"> join </a> </li>
            <li> <a href="#gallery"> About  </a></li>
            <li> <a href="#contact"> Find </a></li>
        </ul>
    </nav>
    <div id="awesome">
        <a href="https://www.facebook.com"><i class="fa font fa-facebook"></i></a>
        <a href="https://twitter.com"><i  class="fa font fa-twitter"></i></a>
        <a href="https://instagram.com"><i class="fa font fa-google-plus"></i></a>
    </div>
    <!--Weather-->
    <div class="weather-block">
        <i class="fa fa-umbrella"></i>
        <div id="weather"></div>
    </div>
    <br clear="all" />
</header>

<!--Slide-show-->
<div id="doc">
    <div id="content">
        <ul class="rslides">
            <li>
                <img class="slider-img" src="/resources/images/slide-show/img-home-hero.jpg"/>
            </li>

            <li>
                <img class="slider-img" src="/resources/images/slide-show/rsz_cl-15.jpg"/>
            </li>
        </ul>
    </div>
    <br clear="all" />
</div>


<!--Add slideshow  JS&CSS files -->
<script src="/resources/js/responsiveslides.min.js"></script>
<!-- Slider -->
<script>
    $(function() {
        $(".rslides").responsiveSlides({
            nav: true,
            timeout: 5000,
            namespace: "centered-btns"
        });
    });
</script>
<!--Weather-->
<script type="text/javascript">
    $(document).ready(function () {
        $.simpleWeather({
            location: 'Yerevan, Armenia',
            woeid: '',
            unit: 'c',
            success: function(weather) {
                html = '<h2><i class="icon-'+weather.code+'"></i> '+weather.temp+'&deg;'+weather.units.temp+'</h2>';

                $("#weather").html(html);
            },
            error: function(error) {
                $("#weather").html('<p>'+error+'</p>');
            }
        });
    });
    window.onload = (function(){
        $(window).scroll(function () {
            if( $(window).scrollTop() > 200 ) {
                //$('#header').css('display','block');
                $('#header').fadeIn();
            }else{
                $('#header').fadeOut();
                //$('#header').css('display','none');
            }
        })
    })
</script>

</body>
</html>