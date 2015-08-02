<%@ page import="org.proffart.carpool.service.UserServiceImpl" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% Boolean isLogged = UserServiceImpl.isLogged(); %>
<!DOCTYPE html>
<html lang="en" ng-app="carpool">
<head>
    <meta charset="utf-8">
    <title>Carpool Armenia</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Carpool Armenia ... la la la la la la">
    <meta name="author" content="">

    <!--link rel="stylesheet/less" href="less/bootstrap.less" type="text/css" /-->
    <!--link rel="stylesheet/less" href="less/responsive.less" type="text/css" /-->
    <!--script src="js/less-1.3.3.min.js"></script-->
    <!--append ‘#!watch’ to the browser URL, then refresh the page. -->
    <!-- angular scripts -->
    <script type="text/javascript" src="/resources/js/lodash.min.js"></script>
    <script type="text/javascript" src="/resources/js/angular.min.js"></script>
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="/resources/css/scrolling-nav.css" rel="stylesheet">
    <link href="/resources/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <link href="/resources/css/selectize.default.css" rel="stylesheet">
    <link href="/resources/css/select2.css" rel="stylesheet">

    <link href="/resources/css/select.css" rel="stylesheet">
    <link href="/resources/css/style.css" rel="stylesheet">
    <link href="/resources/css/media_queries.css" rel="stylesheet">

    <!--jQuery custom content scroller-->
    <link href="/resources/css/jquery.mCustomScrollbar.css" rel="stylesheet">
    <!--end-->

    <!--Fonts-->
    <link href="/resources/fonts/OpenSans-Regular.ttf" rel="stylesheet">
    <link href="/resources/fonts/raleway.medium.ttf" rel="stylesheet">
    <link href="/resources/fonts/modern-sans-serif-7.regular.ttf" rel="stylesheet">
    <!--end-->

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="/resources/js/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/resources/img/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/resources/img/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/resources/img/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="/resources/img/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="/resources/img/favicon.png">

</head>


<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

<!-- Navigation -->
<%@include file="./WEB-INF/views/navigation.jsp" %>


<!-- Intro Section -->
<section id="intro" class="intro-section section">
    <div id="video">
        <video width="100%" autoplay loop>
            <source src="/resources/images/test3.mp4" type="video/mp4">
        </video>
        <div class="video-cover"></div>
        <div class="container">
            <% if(isLogged) { %>
            <h1 class="slider-heading text-center"> Let's get started</h1>
            <p class="text-center slider-title">Connecting people who need to travel with drivers who have empty seats.</p>
            <div style="text-align: center">
                <a class="btn btn-default btn-join btn-index" href="#modal-container-profile"  role="button" data-toggle="modal" ng-click="openProfile()"><i class="fa fa-user"></i> My Profile </a>
                <a class="btn btn-default btn-join btn-index" href="#modal-container-cars"     role="button" data-toggle="modal"><i class="fa fa-car"></i> My cars </a>
                <a class="btn btn-default btn-join btn-index" href="#modal-container-routs"    role="button" data-toggle="modal" ng-click="openForAddRoute()"><i class="fa fa-exchange"></i> My routs </a>
            </div>
            <% }else{ %>
            <h1 class="slider-heading text-center"> Let's get started</h1>
            <p class="text-center slider-title">Connecting people who need to travel with drivers who have empty seats.</p>
            <div style="text-align: center">
                <a class="btn btn-default btn-join btn-index " href="#modal-container-registration" role="button" data-toggle="modal"> BECOME A MEMBER </a>
            </div>
            <% } %>
        </div>
    </div>
</section>

<!-- Find Section -->
<section id="find" class="find-section section">
    <div class="container">
        <div class="row">

            <ng-include src="'search-form.html'"></ng-include>

        </div>

    </div>

</section>


<!-- what we do -->
<section id="about" class="about-section section">
    <div class="container">
        <div class="row">
            <div class="col-md-12 column">
                <h3 class="text-center headings">
                    What We Do?
                </h3>
                    <hr class="hr">

                <div class="row clearfix">
                    <div class="col-md-7 column">
                        <p class="text-left paragraphs">
                            Carpool is designed for local users in support of community transit and environmental goals. Its mission, vision and values lead to actions aimed at decreasing personal car ownership, reducing vehicle distance travelled, improving urban land use and development, providing affordable access to vehicles for all constituencies, as well as motivating residents to walk, cycle and take buses and trains, and decreasing dependence on fossil fuels while reducing the emission of greenhouse gases.
                        </p>
                        <ul class="text-left paragraphs">
                            <li><i class="fa fa-check check-icon"></i>Carpool is a spontaneous ridesharing service for mobile and web.</li>
                            <li><i class="fa fa-check check-icon"></i>Passengers, looking for a ride, can find local community drivers on the phone.</li>
                            <li><i class="fa fa-check check-icon"></i>Users with a car can register as a driver and start receiving ride requests from passengers.</li>
                        </ul>
                    </div>
                    <div class="col-md-5 column">
                        <img src="/resources/images/what-we-do.jpg" style="width: 100%;" class="img-thumbnail">
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Benefits Section -->
<section id="benefits" class="about-section section">
    <div class="container">
        <div class="row">
            <div class="col-md-12 column">
                <h3 class="text-center headings">
                    Benefits
                </h3>
                <hr class="hr">

                <div class="row clearfix">
                    <div class="col-md-12 column">
                        <p class="text-center paragraphs">
                            From the moment you request a ride to the moment you arrive, the Carpool experience has been designed from the ground up with your safety in mind.
                            Making cities better is at the heart of everything we do. It’s much more than improving the way people get around. It’s celebrating what makes those cities special, caring about the people who make them great, and being responsible citizens. That’s why we work hard to keep our streets safe for everyone, whether they’re on foot, on a bike, or in another car.
                        </p>
                    </div>

                    <div class="col-lg-12">
                        <div class="col-lg-4">
                            <div class="text-center icon-border">
                                <i class="fa fa-tree fa-2x icon-orange"></i>
                            </div>
                            <h3 class="text-center headings">Environment</h3>
                            <hr class="hr-benefit" />
                            <ul class="paragraphs">
                                <li class="paragraphs"><i class="fa fa-check check-icon"></i>We recommend that the driver and passenger share the driving expenses.</li>
                                <li class="paragraphs"><i class="fa fa-check check-icon"></i>Carpool is all about the community. Be friendly.</li>
                            </ul>
                        </div>

                        <div class="col-lg-4">
                            <div class="text-center icon-border">
                                <i class="fa fa-car fa-2x icon-orange"></i>
                            </div>
                            <h3 class="text-center headings">Drivers</h3>
                            <hr class="hr-benefit" />
                            <ul>
                                <li class="paragraphs"><i class="fa fa-check check-icon"></i>You must have a valid driver's license (show it to your passengers if requested).</li>
                                <li class="paragraphs"><i class="fa fa-check check-icon"></i>Obey traffic laws and respect the speed limit.</li>
                                <li class="paragraphs"><i class="fa fa-check check-icon"></i>Zero tolerance for drinking and driving. </li>
                            </ul>
                        </div>

                        <div class="col-lg-4">
                            <div class="text-center icon-border">
                                <i class="fa fa-users fa-2x icon-orange"></i>
                            </div>
                            <h3 class="text-center headings">passengers</h3>
                            <hr class="hr-benefit" />
                            <ul>
                                <li class="paragraphs"><i class="fa fa-check check-icon"></i>Register as a passenger if you're looking for a driver.</li>
                                <li class="paragraphs"><i class="fa fa-check check-icon"></i>Carpooling is also a wonderful way to meet interesting people, get to know the people you work with or go to school with, and to make new friends.</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!--Contact us-->
    <section id="contact" ng-controller="ContactController">
        <div class="container">
            <h3 class="text-center headings">
                Contact Us
            </h3>
            <hr class="hr">
            <div class="col-lg-3 col-xs-12 pull-left">
                <h5><i class="fa fa-mobile fa-icon"></i> Tel:+374 55 26 30 65 </h5>
                <address><i class="fa fa-map-marker fa-icon"></i> 6/1 Abelyan street,
                    Yerevan 0038, RA
                </address>
                <form ng-submit="send(contactForm)" name="contactForm" novalidate>
                    <div class="form-group">
                        <label for="contactEmail">Email * </label>
                        <input type="email" ng-model="contact.email" class="form-control" id="contactEmail" name="contactEmail" placeholder="Email" required>
                        <p class="help-block" ng-show="contactForm.contactEmail.$error.required && !contactForm.contactEmail.$pristine">
                            Please enter your email
                        </p>
                        <p class="help-block" ng-show="contactForm.contactEmail.$error.email && !contactForm.contactEmail.$pristine">
                            Please enter valid email
                        </p>
                    </div>

                    <div class="form-group">
                        <label for="contactContent">Message * </label>
                        <textarea ng-model="contact.content" class="form-control" id="contactContent" name="contactContent" rows="7" placeholder="Message" ng-minlength="13" ng-maxlength="420" required></textarea>
                        <p class="help-block" ng-show="contactForm.contactContent.$error.required && !contactForm.contactContent.$pristine">
                            Please enter message
                        </p>
                        <p class="help-block" ng-show="contactForm.contactContent.$error.minlength && !contactForm.contactContent.$pristine">
                            Your message is a short
                        </p>
                    </div>

                    <div class="form-group">
                            <button class="col-lg-12 col-xs-12 btn btn-default input-color style-btn btn-bottom">Send</button>
                    </div>

                </form>
            </div>

            <!--Google map-->
            <div class="col-lg-9 col-xs-12 pull-right">
                <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
                <div style="overflow:hidden;height:400px;width:100%;"><div id="gmap_canvas" style="height: 400px;width:100%;"></div>
                    <style>#gmap_canvas img{max-width:none!important;background:none!important}</style>
                    <a class="google-map-code" href="http://premium-wordpress-themes.me" id="get-map-data">the molitor.</a></div>
                <script type="text/javascript"> function init_map(){var myOptions = {zoom:14,center:new google.maps.LatLng(40.1991299,44.47688300000004),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById("gmap_canvas"), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(40.1991299, 44.47688300000004)});infowindow = new google.maps.InfoWindow({content:"<b></b><br/>6/1 Abelyan street,<br/> Yervan" });google.maps.event.addListener(marker, "click", function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>
            </div>
        </div>
    </section>

<!--footer-->
    <div class="col-xs-12 col-lg-12 no-padding footer">
        <div class="container">
            <div class="col-xs-12 text-center">
                <ul>
                    <small  class="footer-title">
                        &copy; 2015 Carpool. All Rights Reserved.
                    </small>
                </ul>
            </div>
        </div>
    </div>

<!-- modal -->

<div class="modal fade" id="modal-container-profile-view" role="dialog"
     aria-labelledby="profileViewModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                <h4 class="modal-title" id="profileViewModalLabel">
                    Profile info
                </h4>
            </div>
            <div class="modal-body">
                <div class="panel-body">
                    <ng-include src="'profile-view.html'"></ng-include>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default input-color style-btn" data-dismiss="modal" ng-click="cancelProfileSave()">
                    Close
                </button>
            </div>
        </div>
    </div>
</div>
<% if(isLogged) { %>

<div class="modal fade" ng-controller="CarsController" id="modal-container-cars" role="dialog"
     aria-labelledby="carsModalLabel" aria-hidden="true" >
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                <h4 class="modal-title" id="carsModalLabel">
                    My Cars
                </h4>
            </div>
            <div class="modal-body">
                <div class="panel-body">
                    <ng-include src="'cars.html'"></ng-include>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default input-color style-btn" data-dismiss="modal">
                    Close
                </button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" ng-controller="RoutsController" id="modal-container-routs" role="dialog"
     aria-labelledby="routsModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                <h4 class="modal-title" id="routsModalLabel">
                    Add Rout
                </h4>
            </div>
            <div class="modal-body">
                <div class="panel-body">
                    <ng-include src="'routs.html'"></ng-include>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" ng-controller="ProfileController" id="modal-container-profile" role="dialog"
     aria-labelledby="profileModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                <h4 class="modal-title" id="profileModalLabel">
                    Change Profile info
                </h4>
            </div>
            <div class="modal-body">
                <div class="panel-body">
                    <ng-include src="'profile.html'"></ng-include>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" ng-click="saveProfileData()">
                    Save
                </button>
                <button type="button" class="btn btn-default" ng-click="cancelProfileSave()" data-dismiss="modal">
                    Close
                </button>

            </div>
        </div>
    </div>
</div>
<% } else { %>

<div class="modal fade" ng-controller="RegistrationController" id="modal-container-registration" role="dialog"
     aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                <h4 class="modal-title" id="myModalLabel">
                    Register Yourself
                </h4>
            </div>
            <div class="modal-body">
                <div class="panel-body">
                    <form class="form-horizontal" name="regForm" ng-submit="registration()" 1novalidate>
                        <ng-include src="'registration-fieldset.html'"></ng-include>
                    </form>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success btn-blue" ng-click="registration()"
                        ng-disabled="regForm.$invalid || !enable">
                    Register Me
                </button>
                <button type="button" class="btn btn-default input-color style-btn" data-dismiss="modal" ng-disabled="!enable">
                    Close
                </button>
            </div>
        </div>
    </div>
</div>
<% } %>
<!-- angular templates -->


<script type="text/ng-template" id="search-form.html">
<%@include file="./WEB-INF/views/search-form.jsp" %>
</script>

<script type="text/ng-template" id="profile-view.html">
<%@include file="./WEB-INF/views/profile-view.jsp" %>
</script>


<% if(!isLogged) { %>

<script type="text/ng-template" id="registration-fieldset.html">
<%@include file="./WEB-INF/views/registration.jsp" %>
</script>

<% } else { %>

<script type="text/ng-template" id="cars.html">
<%@include file="./WEB-INF/views/cars.jsp" %>
</script>

<script type="text/ng-template" id="routs.html">
<%@include file="./WEB-INF/views/routs.jsp" %>
</script>

<script type="text/ng-template" id="profile.html">
<%@include file="./WEB-INF/views/profile.jsp" %>
</script>

<% } %>


<%@include file="./WEB-INF/views/scripts.jsp" %>


</body>
</html>
