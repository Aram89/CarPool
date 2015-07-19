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
    <link href="http://cdnjs.cloudflare.com/ajax/libs/select2/3.4.5/select2.css" rel="stylesheet">

    <link href="/resources/css/select.css" rel="stylesheet">
    <link href="/resources/css/style.css" rel="stylesheet">


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
                    <a class="btn btn-default btn-join btn-index" href="#modal-container-cars"  role="button" data-toggle="modal"><i class="fa fa-car"></i> My cars </a>
                    <a class="btn btn-default btn-join btn-index" href="#modal-container-routs" role="button" data-toggle="modal"><i class="fa fa-exchange"></i> My routs </a>
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


<!-- About Section -->
<section id="about" class="about-section section">
    <div class="container">
        <div class="row">
            <div class="col-md-12 column">
                <h3 class="text-muted">
                    About
                </h3>
                    <hr class="hr">

                <div class="row clearfix">
                    <div class="col-md-8 column">
                        <p class="text-left">
                            In the last decade, car pooling has become more & more popular. It’s an interesting and eco-friendly way to travel, you meet new people on the road and you save some money from both sides.
                        </p>
                        <h4 class="text-center">
                            What is Carpool?
                        </h4>
                        <ul class="text-left">
                            <li>
                                Carpool is designed for local users in support of community transit and environmental goals. Its mission, vision and values lead to actions aimed at decreasing personal car ownership, reducing vehicle distance travelled, improving urban land use and development, providing affordable access to vehicles for all constituencies, as well as motivating residents to walk, cycle and take buses and trains, and decreasing dependence on fossil fuels while reducing the emission of greenhouse gases.
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-4 column">
                        <img src="/resources/images/join_as.jpg" style="width: 100%;" class="img-thumbnail">
                    </div>
                </div>
        </div>
    </div>
</section>

<!--Contact us-->
    <section id="contact" ng-controller="ContactController">
        <div class="container">
            <h3 class="text-muted">
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
                        <textarea ng-model="contact.content" class="form-control" id="contactContent" name="contactContent" rows="10" placeholder="Message" ng-minlength="13" ng-maxlength="420" required></textarea>
                        <p class="help-block" ng-show="contactForm.contactContent.$error.required && !contactForm.contactContent.$pristine">
                            Please enter message
                        </p>
                        <p class="help-block" ng-show="contactForm.contactContent.$error.minlength && !contactForm.contactContent.$pristine">
                            Your message is a short
                        </p>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-12 pull-left btn-send">
                            <button class="btn btn-default btn-find btn-reg">Send</button>
                        </div>
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
                <button type="button" class="btn btn-default btn-join" data-dismiss="modal">
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
                <button type="button" class="btn btn-default btn-join" data-dismiss="modal" ng-disabled="!enable">
                    Close
                </button>
                <button type="button" class="btn btn-success btn-blue" ng-click="registration()"
                        ng-disabled="regForm.$invalid || !enable">
                    Register Me
                </button>
            </div>
        </div>
    </div>
</div>
<% } %>


<!-- angular templates -->
<script type="text/ng-template" id="registration-fieldset.html">

    <fieldset>


        <div class="form-group" ng-class="{ 'has-error' : regForm.userName.$invalid && !regForm.userName.$pristine }">
            <label class="col-md-4 control-label" for="userName">Login Name</label>

            <div class="col-md-6">
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-user"></i></span>
                    <input id="userName" name="userName" class="form-control" placeholder="Your login name"
                           ng-model="user.userName"
                           ng-remote-check="user/check-user-name/"
                           required type="text">
                </div>
                <p class="help-block" ng-show="regForm.userName.$error.required && !regForm.userName.$pristine">Please
                    enter your login</p>

                <p class="help-block" ng-show="regForm.userName.$error.remote && !regForm.userName.$pristine">This login
                    already exist</p>
            </div>
        </div>


        <div class="form-group" ng-class="{ 'has-error' : regForm.email.$invalid && !regForm.email.$pristine }">
            <label class="col-md-4 control-label" for="email">Email</label>

            <div class="col-md-6">
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-at"></i></span>
                    <input id="email" name="email" class="form-control" placeholder="Your Email"
                           ng-model="user.email"
                           ng-remote-check="user/check-email/"
                           required type="email">
                </div>
                <p class="help-block" ng-show="regForm.email.$error.required && !regForm.email.$pristine">Please enter
                    your email</p>

                <p class="help-block" ng-show="regForm.email.$error.email && !regForm.email.$pristine">Email is not a
                    valid</p>

                <p class="help-block" ng-show="regForm.email.$error.remote && !regForm.email.$pristine">This email
                    already exist</p>
            </div>
        </div>

        <div class="form-group" ng-class="{ 'has-error' : regForm.passwd.$invalid && !regForm.passwd.$pristine }">
            <label class="col-md-4 control-label" for="passwd">Password</label>

            <div class="col-md-6">
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                    <input id="passwd" name="passwd" class="form-control" placeholder="Enter Password"
                           ng-model="user.password" required type="password">
                </div>
                <p class="help-block" ng-show="regForm.passwd.$error.required && !regForm.passwd.$pristine">Please enter
                    your password</p>
            </div>
        </div>


        <div class="form-group "
             ng-class="{ 'has-error' : regForm.confirmPassword.$invalid && !regForm.confirmPassword.$pristine }">
            <label class="col-md-4 control-label" for="confirmPassword">Password Again</label>

            <div class="col-md-6">
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                    <input id="confirmPassword" name="confirmPassword" class="form-control"
                           placeholder="Retype Password"
                           ng-model="user.confirmPassword"
                           ng-match="user.password"
                           required type="password">
                </div>
                <p class="help-block"
                   ng-show="regForm.confirmPassword.$error.required && !regForm.confirmPassword.$pristine">Please enter
                    your verify password</p>

                <p class="help-block"
                   ng-show="regForm.confirmPassword.$error.match && !regForm.confirmPassword.$pristine">Password
                    confirmation doesnot match</p>
            </div>
        </div>

    </fieldset>

</script>

<script type="text/ng-template" id="search-form.html">

    <div ng-controller="FindController" class="find-div">
        <h3 class="text-muted">
            Find Car or Driver
        </h3>
        <hr class="hr">
        <div class="row">

            <div class="col-md-4 col-xs-12">
                <input id="searchFrom" type="text" class="form-control find-input" placeholder="From">
            </div>

            <div class="col-md-4 col-xs-12">
                <input id="searchTo" type="text" class="form-control find-input" placeholder="To">
            </div>

            <div class="col-md-3 col-xs-12">
                <div class="row">
                    <div class="col-xs-12">

                        <div class="form-group">
                            <div id="searchDateBlock" class="input-group date">
                                <input id="searchDate" type="text" class="form-control">
                  <span class="input-group-addon">
                    <span class="glyphicon glyphicon-calendar"></span>
                  </span>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="col-md-1 col-xs-12">
                <button class="btn btn-block btn-default btn-find">
                    <i class="fa fa-search"></i> Find
                </button>
            </div>

        </div>


        <div class="content-wrap">

            <div class="row section-row">
                <div class="col-xs-6 col-md-4">
                    <img src="/resources/images/join_as.jpg" class="img-responsive img-thumbnail img-profile-thumbnail"/>
                </div>
                <div class="col-xs-6 col-md-4">
                    <h3>Profile Name </h3>
                    <ul>
                        <li> from:</li>
                        <li> to:</li>
                        <li> date:</li>
                    </ul>
                </div>

                <div class="col-xs-6 col-md-4" style="padding:25px">
                    <a href="#"><i class="fa fa-facebook fa-icon"></i></a>
                    <a href="#"><i class="fa fa-twitter fa-icon"></i></a>
                    <a href="#"><i class="fa fa-google-plus fa-icon"></i></a>

                    <div class="col-xs-8 col-md-10">
                        <button type="button" class="btn btn-default btn-join">Details</button>
                    </div>
                </div>
            </div>

            <div class="row section-row">
                <div class="col-xs-6 col-md-4">
                    <img src="/resources/images/join_as.jpg"
                         class="img-responsive img-thumbnail img-profile-thumbnail"/>
                </div>
                <div class="col-xs-6 col-md-4">
                    <h3>Profile Name </h3>
                    <ul>
                        <li> from:</li>
                        <li> to:</li>
                        <li> date:</li>
                    </ul>
                </div>

                <div class="col-xs-6 col-md-4" style="padding:25px">
                    <a href="#"><i class="fa fa-facebook fa-icon"></i></a>
                    <a href="#"><i class="fa fa-twitter fa-icon"></i></a>
                    <a href="#"><i class="fa fa-google-plus fa-icon"></i></a>

                    <div class="col-xs-8 col-md-10">
                        <button type="button" class="btn btn-default btn-join">Details</button>
                    </div>
                </div>
            </div>

            <div class="row section-row">
                <div class="col-xs-6 col-md-4">
                    <img src="/resources/images/join_as.jpg"
                         class="img-responsive img-thumbnail img-profile-thumbnail"/>
                </div>
                <div class="col-xs-6 col-md-4">
                    <h3>Profile Name </h3>
                    <ul>
                        <li> from:</li>
                        <li> to:</li>
                        <li> date:</li>
                    </ul>
                </div>

                <div class="col-xs-6 col-md-4" style="padding:25px">
                    <a href="#"><i class="fa fa-facebook fa-icon"></i></a>
                    <a href="#"><i class="fa fa-twitter fa-icon"></i></a>
                    <a href="#"><i class="fa fa-google-plus fa-icon"></i></a>

                    <div class="col-xs-8 col-md-10">
                        <button type="button" class="btn btn-default btn-join">Details</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</script>

<script type="text/ng-template" id="cars.html">

<div class="row">
    <div class="col-xs-6 col-md-3"><strong> Model </strong></div>
    <div class="col-xs-6 col-md-3"><strong> Number </strong></div>
    <div class="col-xs-10 col-md-4"><strong> Description </strong></div>
    <div class="col-xs-2 col-md-2">
        <button type="button" class="btn btn-success btn-sm" ng-click="addNewCar()">
            <i class="fa fa-plus"></i>
        </button>
    </div>
</div>

<div class="row" ng-repeat="car in cars" style="margin-top: 7px; margin-bottom: 7px;">
    <div class="col-xs-6 col-md-3">
        <span ng-hide="car.editable" ng-bind="car.model"></span>
        <input type="text" class="form-control" ng-model="car.model" ng-show="car.editable">
    </div>
    <div class="col-xs-6 col-md-3">
        <span ng-hide="car.editable" ng-bind="car.number"></span>
        <input type="text" class="form-control" ng-model="car.number" ng-show="car.editable">
    </div>
    <div class="col-xs-10 col-md-4">
        <span ng-hide="car.editable" ng-bind="car.description"></span>
        <textarea ng-model="car.description" class="form-control" rows="1" ng-show="car.editable"></textarea>
    </div>
    <div class="col-xs-2 col-md-2">
        <button type="button" class="btn btn-primary btn-xs" ng-hide="car.editable" ng-click="editCar(car)">
            <i class="fa fa-edit"></i>
        </button>
        <button type="button" class="btn btn-danger btn-xs" ng-hide="car.editable" ng-click="deleteCar(car)">
            <i class="fa fa-trash"></i>
        </button>
        <button type="button" class="btn btn-success btn-xs" ng-show="car.editable" ng-click="saveCar(car)"
            ng-disabled="!car.model && !car.number && !car.description">
            <i class="fa fa-check"></i>
        </button>
        <button type="button" class="btn btn-warning btn-xs" ng-show="car.editable" ng-click="cancelEdit(car)">
            <i class="fa fa-times"></i>
        </button>
    </div>
</div>


</script>

<script type="text/ng-template" id="routs.html">
<%@include file="./WEB-INF/views/routs.jsp" %>
</script>

<%@include file="./WEB-INF/views/scripts.jsp" %>


</body>
</html>
