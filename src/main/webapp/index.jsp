<!DOCTYPE html>
<html lang="en">
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
  
  <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
  <link href="/resources/css/font-awesome.min.css" rel="stylesheet">
  <link href="/resources/css/scrolling-nav.css" rel="stylesheet">
  <link href="/resources/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
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

  <!-- use jssor.slider.min.js instead for release -->
  <!-- jssor.slider.min.js = (jssor.js + jssor.slider.js) -->
  <script type="text/javascript" src="/resources/js/jssor.js"></script>
  <script type="text/javascript" src="/resources/js/jssor.slider.js"></script>
  <script type="text/javascript" src="/resources/js/gallery.js"></script>
</head>


<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top" ng-app="carpool">

<!-- Navigation -->
<div class="navbar navbar-default navbar-fixed-top" id="nav-height" role="navigation">
  <div class="container">
    <div class="welcome-page">
      <div class="navbar-header page-scroll">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a href="page-top"> <img alt="join as" src="/resources/img/logo-main.png" style="width: 50px;"/> </a>
      </div>


      <div class="collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-nav">
          <li class="hidden">
            <a class="page-scroll " href="#page-top"></a>
          </li>
          <li>
            <a class="page-scroll" href="#join">Join</a>
          </li>
          <li>
            <a class="page-scroll" href="#find">Find</a>
          </li>
          <li>
            <a class="page-scroll" href="#about">About</a>
          </li>
          <li>
            <a class="page-scroll" href="/map">Map</a>
          </li>
        </ul>



        <ul class="nav navbar-nav navbar-right ">
          <li><a href="#"><i class="fa fa-facebook fa-icon"></i></a></li>
          <li><a href="#"><i class="fa fa-twitter fa-icon"></i></a></li>
          <li><a href="#"><i class="fa fa-google-plus fa-icon"></i></a></li>
        </ul>
        <form class="navbar-form navbar-right" ng-controller="loginController" ng-submit="login">
          <div class="form-group">
            <input class="form-control input-color" type="text" ng-model="user.userName" placeholder="Login" />
          </div>
          <div class="form-group">
            <input class="form-control input-color" type="password" ng-model="user.password" placeholder="Password" />
          </div>
          <button type="submit" class="btn btn-default input-color">Login</button>
        </form>
      </div>

    </div>
</div>
    </div>




<!-- Intro Section -->
<section id="intro" class="intro-section section">
  <div class="container">
    <div class="row">

<!--Slide Show-->
      <div class="col-md-12 column">

        <!-- Jssor Slider Begin -->
        <!-- To move inline styles to css file/block, please specify a class name for each element. -->
        <div id="slider1_container" style="position: relative; width: 600px; height: 300px; overflow: hidden; ">

          <!-- Loading Screen -->
          <div u="loading" style="position: absolute; top: 0px; left: 0px;">
            <div style="filter: alpha(opacity=70); opacity:0.7; position: absolute; display: block;
                background-color: #000; top: 0px; left: 0px;width: 100%;height:100%;">
            </div>
            <div style="position: absolute; display: block; background: url(/resources/images/loading.gif) no-repeat center center;
                top: 0px; left: 0px;width: 100%;height:100%;">
            </div>
          </div>

          <!-- Slides Container -->
          <div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 600px; height: 300px;
            overflow: hidden;">
            <div>
              <a u=image href="#"><img src="/resources/images/republic_square.jpg" /></a>
              <div u=caption t="*" class="captionOrange"  style="position:absolute; left:20px; top: 30px; width:300px; height:30px;">
                slideshow transition twins
              </div>
            </div>
            <div>
              <a u=image href="#"><img src="/resources/images/02.jpg" /></a>
              <div u=caption t="*" class="captionOrange"  style="position:absolute; left:20px; top: 30px; width:300px; height:30px;">
                random caption transition
              </div>
            </div>
            <div>
              <a u=image href="#"><img src="/resources/images/03.jpg" /></a>
              <div u=caption t="*" class="captionOrange"  style="position:absolute; left:20px; top: 30px; width:300px; height:30px;">
                mobile ready, touch swipe
              </div>
            </div>
            <div>
              <a u=image href="#"><img src="/resources/images/04.jpg" /></a>
              <div u=caption t="*" class="captionOrange"  style="position:absolute; left:20px; top: 30px; width:300px; height:30px;">
                responsive, scale smoothly
              </div>
            </div>
          </div>
          <!--#region Bullet Navigator Skin Begin -->
          <!-- Help: http://www.jssor.com/development/slider-with-bullet-navigator-jquery.html -->
          <!-- bullet navigator container -->
          <div u="navigator" class="jssorb01" style="bottom: 16px; right: 10px;">
            <!-- bullet navigator item prototype -->
            <div u="prototype"></div>
          </div>
          <!--#endregion Bullet Navigator Skin End -->

          <!--#region Arrow Navigator Skin Begin -->
          <!-- Help: http://www.jssor.com/development/slider-with-arrow-navigator-jquery.html -->
          <!-- Arrow Left -->
        <span u="arrowleft" class="jssora05l" style="top: 123px; left: 8px;">
        </span>
          <!-- Arrow Right -->
        <span u="arrowright" class="jssora05r" style="top: 123px; right: 8px;">
        </span>
          <a style="display: none" href="http://www.jssor.com">slider in html</a>
          <!-- Trigger -->
          <script>
            jssor_slider1_starter('slider1_container');
          </script>
        </div>
        <!-- Jssor Slider End -->


      </div>
  </div>
</section>



<!-- Join Section -->
<section id="join" class="join-section section">
  <div class="container">
    <div class="row">

      <div class="col-md-8 column">
        <h3 class="text-muted">
          h3. Lorem ipsum dolor sit amet.
        </h3>
        <p>
          Lorem ipsum dolor sit amet, <strong>consectetur adipiscing elit</strong>. Aliquam eget sapien sapien. Curabitur in metus urna. In hac habitasse platea dictumst. Phasellus eu sem sapien, sed vestibulum velit. Nam purus nibh, lacinia non faucibus et, pharetra in dolor. Sed iaculis posuere diam ut cursus. <em>Morbi commodo sodales nisi id sodales. Proin consectetur, nisi id commodo imperdiet, metus nunc consequat lectus, id bibendum diam velit et dui.</em> Proin massa magna, vulputate nec bibendum nec, posuere nec lacus. <small>Aliquam mi erat, aliquam vel luctus eu, pharetra quis elit. Nulla euismod ultrices massa, et feugiat ipsum consequat eu.</small>
        </p>
      </div>
      <div class="col-md-4 column">
        <img alt="join as" src="/resources/images/join_as.jpg" style="width: 100%;">
        <div class="row join-buttons">
          <div class="col-xs-6 column text-right">
            <a class="btn btn-default" href="#modal-container-registration" role="button" data-toggle="modal"> Join Default</a>
          </div>
          <div class="col-xs-6 column text-left">
            <a class="btn btn-default" href="#modal-container-registration" role="button" data-toggle="modal"> Join Default</a>
          </div>
        </div>
      </div>


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


      <!-- MAP -->


      <div class="form-horizontal col-md-12">
        <div class="form-group">
          <label for="fromLocation" class="col-sm-2 control-label">From Location</label>
          <div class="col-sm-8">
            <input class="form-control" id="fromLocation" type="text"/>
          </div>
          <label class="col-sm-1 control-label">Length</label>
          <label class="col-sm-1 control-label">12 Km</label>
        </div>
        <div class="form-group">
          <label for="toLocation" class="col-sm-2 control-label">To Location</label>
          <div class="col-sm-8">
            <input class="form-control" id="toLocation" type="text"/>
          </div>
          <label class="col-sm-1 control-label">Time</label>
          <label class="col-sm-1 control-label">123 m</label>
        </div>
        <div class="form-group">
          <label for="toLocation" class="col-sm-2 control-label">Start time</label>
          <div class="col-sm-3">
            <input class="form-control" id="startTime" type="text"/>
          </div>
          <label class="col-sm-2 control-label">&nbsp;</label>
          <div class="col-sm-3 checkbox">
            <label>
              <input type="checkbox" checked> Parberakan e te voch
            </label>
          </div>
        </div>
        <div class="form-group">
          <label for="toLocation" class="col-sm-2 control-label">Start Date</label>
          <div class="col-sm-5">
            <input class="form-control" id="startDate" type="text"/>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label">Start Date</label>
          <div class="col-sm-1 checkbox">
            <label>
              <input type="checkbox" checked> Monday
            </label>
          </div>
          <div class="col-sm-1 checkbox">
            <label>
              <input type="checkbox" checked> Tuesday
            </label>
          </div>
          <div class="col-sm-1 checkbox">
            <label>
              <input type="checkbox" checked> Wednesday
            </label>
          </div>
          <div class="col-sm-1 checkbox">
            <label>
              <input type="checkbox" checked> Thursday
            </label>
          </div>
          <div class="col-sm-1 checkbox">
            <label>
              <input type="checkbox" checked> Friday
            </label>
          </div>
          <div class="col-sm-1 checkbox">
            <label>
              <input type="checkbox" checked> Saturday
            </label>
          </div>
          <div class="col-sm-1 checkbox">
            <label>
              <input type="checkbox" checked> Sunday
            </label>
          </div>
        </div>
        <div class="col-md-12 column">
        </div>
      </div>




      <!-- END MAP -->


      <div class="col-md-12 column">
        <h3 class="text-muted">
          About
        </h3>
        <div class="row clearfix">
          <div class="col-md-8 column">
            <p>
              Lorem ipsum dolor sit amet,
              <strong>consectetur adipiscing elit</strong>.
              Aliquam eget sapien sapien. Curabitur in metus urna. In hac habitasse platea dictumst.
              Phasellus eu sem sapien, sed vestibulum velit. Nam purus nibh, lacinia non faucibus et, pharetra in dolor.
              Sed iaculis posuere diam ut cursus.
              <em>
                Morbi commodo sodales nisi id sodales.
                Proin consectetur, nisi id commodo imperdiet, metus nunc consequat lectus,
                id bibendum diam velit et dui.
              </em>
              Proin massa magna, vulputate nec bibendum nec, posuere nec lacus.
              <small>
                Aliquam mi erat, aliquam vel luctus eu, pharetra quis elit. Nulla euismod ultrices massa,
                et feugiat ipsum consequat eu.
              </small>
            </p>
          </div>
          <div class="col-md-4 column">
            <img src="/resources/images/join_as.jpg" style="width: 100%;" class="img-thumbnail">
          </div>
        </div>
        <div class="row clearfix">
          <div class="col-md-4 column">
            <img src="/resources/images/join_as.jpg" style="width: 100%;" class="img-thumbnail">
          </div>
          <div class="col-md-8 column">
            <p>
              Lorem ipsum dolor sit amet,
              <strong>consectetur adipiscing elit</strong>.
              Aliquam eget sapien sapien. Curabitur in metus urna. In hac habitasse platea dictumst.
              Phasellus eu sem sapien, sed vestibulum velit. Nam purus nibh, lacinia non faucibus et, pharetra in dolor.
              Sed iaculis posuere diam ut cursus.
              <em>
                Morbi commodo sodales nisi id sodales.
                Proin consectetur, nisi id commodo imperdiet, metus nunc consequat lectus,
                id bibendum diam velit et dui.
              </em>
              Proin massa magna, vulputate nec bibendum nec, posuere nec lacus.
              <small>
                Aliquam mi erat, aliquam vel luctus eu, pharetra quis elit. Nulla euismod ultrices massa,
                et feugiat ipsum consequat eu.
              </small>
            </p>

          </div>
        </div>
      </div>


      <div class="col-md-12" >
        <div class="row">
          <div class="col-md-12 column text-center">
            <span class="label label-primary">email@site.com</span>
            <i class="fa fa-facebook"></i>
            <i class="fa fa-twitter"></i>
            <i class="fa fa-google-plus"></i>
          </div>
        </div>
      </div>

    </div>
  </div>
</section>




<!-- modal -->

<div class="modal fade" ng-controller="registrationController" id="modal-container-registration" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
        <button type="button" class="btn btn-default" data-dismiss="modal">
          Close
        </button>
        <button type="button" class="btn btn-success" ng-click="registration()" ng-disabled="regForm.$invalid">
          Register Me
        </button>
      </div>
    </div>
  </div>
</div>

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
      <p class="help-block" ng-show="regForm.userName.$error.required && !regForm.userName.$pristine">Please enter your login</p>

      <p class="help-block" ng-show="regForm.userName.$error.remote && !regForm.userName.$pristine">This login already exist</p>
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
      <p class="help-block" ng-show="regForm.email.$error.required && !regForm.email.$pristine">Please enter your email</p>
      <p class="help-block" ng-show="regForm.email.$error.email && !regForm.email.$pristine">Email is not a valid</p>
      <p class="help-block" ng-show="regForm.email.$error.remote && !regForm.email.$pristine">This email already exist</p>
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


  <div class="form-group " ng-class="{ 'has-error' : regForm.confirmPassword.$invalid && !regForm.confirmPassword.$pristine }">
    <label class="col-md-4 control-label" for="confirmPassword">Password Agan</label>

    <div class="col-md-6">
      <div class="input-group">
        <span class="input-group-addon"><i class="fa fa-lock"></i></span>
        <input id="confirmPassword" name="confirmPassword" class="form-control" placeholder="Retype Password"
               ng-model="user.confirmPassword"
               ng-match="user.password"
               required type="password">
      </div>
      <p class="help-block" ng-show="regForm.confirmPassword.$error.required && !regForm.confirmPassword.$pristine">Please enter your verify password</p>
      <p class="help-block" ng-show="regForm.confirmPassword.$error.match && !regForm.confirmPassword.$pristine">Password confirmation doesnot match</p>
    </div>
  </div>

</fieldset>

</script>

<script type="text/ng-template" id="search-form.html">

  <div ng-controller="findController">
    <h3 class="text-muted">
      Find Car or Driver
    </h3>
    <hr>
    <div class="row" >

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
              <div id="searchDateBlock"  class="input-group date" >
                <input id="searchDate" type="text" class="form-control" >
                  <span class="input-group-addon">
                    <span class="glyphicon glyphicon-calendar"></span>
                  </span>
              </div>
            </div>

          </div>
        </div>
      </div>

      <div class="col-md-1 col-xs-12">
        <button class="btn btn-block btn-default">
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
          <a href="#"><i class="fa fa-facebook-square fa-2x"></i></a>
          <a href="#"><i class="fa fa-twitter-square fa-2x"></i></a>
          <a href="#"><i class="fa fa-google-plus-square fa-2x"></i></a>
          <div class="col-xs-8 col-md-10">
            <button type="button" class="btn btn-default">Details</button>
          </div>
        </div>
      </div>

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
          <a href="#"><i class="fa fa-facebook-square fa-2x"></i></a>
          <a href="#"><i class="fa fa-twitter-square fa-2x"></i></a>
          <a href="#"><i class="fa fa-google-plus-square fa-2x"></i></a>
          <div class="col-xs-8 col-md-10">
            <button type="button" class="btn btn-default">Details</button>
          </div>
        </div>
      </div>

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
          <a href="#"><i class="fa fa-facebook-square fa-2x"></i></a>
          <a href="#"><i class="fa fa-twitter-square fa-2x"></i></a>
          <a href="#"><i class="fa fa-google-plus-square fa-2x"></i></a>
          <div class="col-xs-8 col-md-10">
            <button type="button" class="btn btn-default">Details</button>
          </div>
        </div>
      </div>

    </div>


  </div>

</script>

<!-- jquery and bootstrap scripts -->
<script type="text/javascript" src="/resources/js/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.easing.min.js"></script>
<script type="text/javascript" src="/resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/resources/js/scrolling-nav.js"></script>
<script type="text/javascript" src="/resources/js/moment.js"></script>
<script type="text/javascript" src="/resources/js/bootstrap-datetimepicker.min.js"></script>
<!-- angular scripts -->
<script type="text/javascript" src="/resources/js/lodash.min.js"></script>
<script type="text/javascript" src="/resources/js/angular.min.js"></script>
<script type="text/javascript" src="/resources/js/angular-google-maps.min.js"></script>
<script type="text/javascript" src="/resources/js/ng/carpool.js"></script>
<!-- -->
<script type="text/javascript" src="/resources/js/scripts.js"></script>


</body>
</html>
