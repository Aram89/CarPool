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

</head>


<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top" ng-app="carpool">

<!-- Navigation -->
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
  <div class="container">
    <div class="navbar-header page-scroll">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand page-scroll" href="#page-top">Carpool</a>
    </div>


    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
        <li class="hidden">
          <a class="page-scroll" href="#page-top"></a>
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
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
      </ul>
      <form class="navbar-form navbar-right" ng-controller="loginController" ng-submit="login">
        <div class="form-group">
          <input class="form-control" type="text" ng-model="user.userName" placeholder="Login" />
        </div>
        <div class="form-group">
          <input class="form-control" type="text" ng-model="user.password" placeholder="Password" />
        </div>
        <button type="submit" class="btn btn-default">Login</button>
      </form>
    </div>

  </div>
</nav>



<!-- Intro Section -->
<section id="intro" class="intro-section section">
  <div class="container">
    <div class="row">

<!--Slide Show-->
      <div class="col-md-12 column">
        <script>
          jssor_slider1_starter = function (containerId) {
            //Reference http://www.jssor.com/development/slider-with-slideshow-no-jquery.html
            //Reference http://www.jssor.com/development/tool-slideshow-transition-viewer.html

            var _SlideshowTransitions = [
              //Rotate Overlap
              { $Duration: 1200, $Zoom: 11, $Rotate: -1, $Easing: { $Zoom: $JssorEasing$.$EaseInQuad, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInQuad }, $Opacity: 2, $Round: { $Rotate: 0.5 }, $Brother: { $Duration: 1200, $Zoom: 1, $Rotate: 1, $Easing: $JssorEasing$.$EaseSwing, $Opacity: 2, $Round: { $Rotate: 0.5 }, $Shift: 90 } },
              //Switch
              { $Duration: 1400, x: 0.25, $Zoom: 1.5, $Easing: { $Left: $JssorEasing$.$EaseInWave, $Zoom: $JssorEasing$.$EaseInSine }, $Opacity: 2, $ZIndex: -10, $Brother: { $Duration: 1400, x: -0.25, $Zoom: 1.5, $Easing: { $Left: $JssorEasing$.$EaseInWave, $Zoom: $JssorEasing$.$EaseInSine }, $Opacity: 2, $ZIndex: -10 } },
              //Rotate Relay
              { $Duration: 1200, $Zoom: 11, $Rotate: 1, $Easing: { $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInQuad }, $Opacity: 2, $Round: { $Rotate: 1 }, $ZIndex: -10, $Brother: { $Duration: 1200, $Zoom: 11, $Rotate: -1, $Easing: { $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInQuad }, $Opacity: 2, $Round: { $Rotate: 1 }, $ZIndex: -10, $Shift: 600 } },
              //Doors
              { $Duration: 1500, x: 0.5, $Cols: 2, $ChessMode: { $Column: 3 }, $Easing: { $Left: $JssorEasing$.$EaseInOutCubic }, $Opacity: 2, $Brother: { $Duration: 1500, $Opacity: 2 } },
              //Rotate in+ out-
              { $Duration: 1500, x: -0.3, y: 0.5, $Zoom: 1, $Rotate: 0.1, $During: { $Left: [0.6, 0.4], $Top: [0.6, 0.4], $Rotate: [0.6, 0.4], $Zoom: [0.6, 0.4] }, $Easing: { $Left: $JssorEasing$.$EaseInQuad, $Top: $JssorEasing$.$EaseInQuad, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInQuad }, $Opacity: 2, $Brother: { $Duration: 1000, $Zoom: 11, $Rotate: -0.5, $Easing: { $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInQuad }, $Opacity: 2, $Shift: 200 } },
              //Fly Twins
              { $Duration: 1500, x: 0.3, $During: { $Left: [0.6, 0.4] }, $Easing: { $Left: $JssorEasing$.$EaseInQuad, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2, $Outside: true, $Brother: { $Duration: 1000, x: -0.3, $Easing: { $Left: $JssorEasing$.$EaseInQuad, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2 } },
              //Rotate in- out+
              { $Duration: 1500, $Zoom: 11, $Rotate: 0.5, $During: { $Left: [0.4, 0.6], $Top: [0.4, 0.6], $Rotate: [0.4, 0.6], $Zoom: [0.4, 0.6] }, $Easing: { $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInQuad }, $Opacity: 2, $Brother: { $Duration: 1000, $Zoom: 1, $Rotate: -0.5, $Easing: { $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInQuad }, $Opacity: 2, $Shift: 200 } },
              //Rotate Axis up overlap
              { $Duration: 1200, x: 0.25, y: 0.5, $Rotate: -0.1, $Easing: { $Left: $JssorEasing$.$EaseInQuad, $Top: $JssorEasing$.$EaseInQuad, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInQuad }, $Opacity: 2, $Brother: { $Duration: 1200, x: -0.1, y: -0.7, $Rotate: 0.1, $Easing: { $Left: $JssorEasing$.$EaseInQuad, $Top: $JssorEasing$.$EaseInQuad, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInQuad }, $Opacity: 2 } },
              //Chess Replace TB
              { $Duration: 1600, x: 1, $Rows: 2, $ChessMode: { $Row: 3 }, $Easing: { $Left: $JssorEasing$.$EaseInOutQuart, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2, $Brother: { $Duration: 1600, x: -1, $Rows: 2, $ChessMode: { $Row: 3 }, $Easing: { $Left: $JssorEasing$.$EaseInOutQuart, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2 } },
              //Chess Replace LR
              { $Duration: 1600, y: -1, $Cols: 2, $ChessMode: { $Column: 12 }, $Easing: { $Top: $JssorEasing$.$EaseInOutQuart, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2, $Brother: { $Duration: 1600, y: 1, $Cols: 2, $ChessMode: { $Column: 12 }, $Easing: { $Top: $JssorEasing$.$EaseInOutQuart, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2 } },
              //Shift TB
              { $Duration: 1200, y: 1, $Easing: { $Top: $JssorEasing$.$EaseInOutQuart, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2, $Brother: { $Duration: 1200, y: -1, $Easing: { $Top: $JssorEasing$.$EaseInOutQuart, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2 } },
              //Shift LR
              { $Duration: 1200, x: 1, $Easing: { $Left: $JssorEasing$.$EaseInOutQuart, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2, $Brother: { $Duration: 1200, x: -1, $Easing: { $Left: $JssorEasing$.$EaseInOutQuart, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2 } },
              //Return TB
              { $Duration: 1200, y: -1, $Easing: { $Top: $JssorEasing$.$EaseInOutQuart, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2, $ZIndex: -10, $Brother: { $Duration: 1200, y: -1, $Easing: { $Top: $JssorEasing$.$EaseInOutQuart, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2, $ZIndex: -10, $Shift: -100 } },
              //Return LR
              { $Duration: 1200, x: 1, $Delay: 40, $Cols: 6, $Formation: $JssorSlideshowFormations$.$FormationStraight, $Easing: { $Left: $JssorEasing$.$EaseInOutQuart, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2, $ZIndex: -10, $Brother: { $Duration: 1200, x: 1, $Delay: 40, $Cols: 6, $Formation: $JssorSlideshowFormations$.$FormationStraight, $Easing: { $Top: $JssorEasing$.$EaseInOutQuart, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2, $ZIndex: -10, $Shift: -100 } },
              //Rotate Axis down
              { $Duration: 1500, x: -0.1, y: -0.7, $Rotate: 0.1, $During: { $Left: [0.6, 0.4], $Top: [0.6, 0.4], $Rotate: [0.6, 0.4] }, $Easing: { $Left: $JssorEasing$.$EaseInQuad, $Top: $JssorEasing$.$EaseInQuad, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInQuad }, $Opacity: 2, $Brother: { $Duration: 1000, x: 0.2, y: 0.5, $Rotate: -0.1, $Easing: { $Left: $JssorEasing$.$EaseInQuad, $Top: $JssorEasing$.$EaseInQuad, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInQuad }, $Opacity: 2 } },
              //Extrude Replace
              { $Duration: 1600, x: -0.2, $Delay: 40, $Cols: 12, $During: { $Left: [0.4, 0.6] }, $SlideOut: true, $Formation: $JssorSlideshowFormations$.$FormationStraight, $Assembly: 260, $Easing: { $Left: $JssorEasing$.$EaseInOutExpo, $Opacity: $JssorEasing$.$EaseInOutQuad }, $Opacity: 2, $Outside: true, $Round: { $Top: 0.5 }, $Brother: { $Duration: 1000, x: 0.2, $Delay: 40, $Cols: 12, $Formation: $JssorSlideshowFormations$.$FormationStraight, $Assembly: 1028, $Easing: { $Left: $JssorEasing$.$EaseInOutExpo, $Opacity: $JssorEasing$.$EaseInOutQuad }, $Opacity: 2, $Round: { $Top: 0.5 } } }
            ];

            var _CaptionTransitions = [
              //CLIP|LR
              {$Duration: 900, $Clip: 3, $Easing: $JssorEasing$.$EaseInOutCubic },
              //CLIP|TB
              {$Duration: 900, $Clip: 12, $Easing: $JssorEasing$.$EaseInOutCubic },

              //DDGDANCE|LB
              {$Duration: 1800, x: 0.3, y: -0.3, $Zoom: 1, $Easing: { $Left: $JssorEasing$.$EaseInJump, $Top: $JssorEasing$.$EaseInJump, $Zoom: $JssorEasing$.$EaseOutQuad }, $Opacity: 2, $During: { $Left: [0, 0.8], $Top: [0, 0.8] }, $Round: { $Left: 0.8, $Top: 2.5} },
              //DDGDANCE|RB
              {$Duration: 1800, x: -0.3, y: -0.3, $Zoom: 1, $Easing: { $Left: $JssorEasing$.$EaseInJump, $Top: $JssorEasing$.$EaseInJump, $Zoom: $JssorEasing$.$EaseOutQuad }, $Opacity: 2, $During: { $Left: [0, 0.8], $Top: [0, 0.8] }, $Round: { $Left: 0.8, $Top: 2.5} },

              //TORTUOUS|HL
              {$Duration: 1500, x: 0.2, $Zoom: 1, $Easing: { $Left: $JssorEasing$.$EaseOutWave, $Zoom: $JssorEasing$.$EaseOutCubic }, $Opacity: 2, $During: { $Left: [0, 0.7] }, $Round: { $Left: 1.3} },
              //TORTUOUS|VB
              {$Duration: 1500, y: -0.2, $Zoom: 1, $Easing: { $Top: $JssorEasing$.$EaseOutWave, $Zoom: $JssorEasing$.$EaseOutCubic }, $Opacity: 2, $During: { $Top: [0, 0.7] }, $Round: { $Top: 1.3} },

              //ZMF|10
              {$Duration: 600, $Zoom: 11, $Easing: { $Zoom: $JssorEasing$.$EaseInExpo, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2 },

              //ZML|R
              {$Duration: 600, x: -0.6, $Zoom: 11, $Easing: { $Left: $JssorEasing$.$EaseInCubic, $Zoom: $JssorEasing$.$EaseInCubic }, $Opacity: 2 },
              //ZML|B
              {$Duration: 600, y: -0.6, $Zoom: 11, $Easing: { $Top: $JssorEasing$.$EaseInCubic, $Zoom: $JssorEasing$.$EaseInCubic }, $Opacity: 2 },

              //ZMS|B
              {$Duration: 700, y: -0.6, $Zoom: 1, $Easing: { $Top: $JssorEasing$.$EaseInCubic, $Zoom: $JssorEasing$.$EaseInCubic }, $Opacity: 2 },

              //ZM*JDN|LB
              {$Duration: 1200, x: 0.8, y: -0.5, $Zoom: 11, $Easing: { $Left: $JssorEasing$.$EaseLinear, $Top: $JssorEasing$.$EaseOutCubic, $Zoom: $JssorEasing$.$EaseInCubic }, $Opacity: 2, $During: { $Top: [0, 0.5]} },
              //ZM*JUP|LB
              {$Duration: 1200, x: 0.8, y: -0.5, $Zoom: 11, $Easing: { $Left: $JssorEasing$.$EaseLinear, $Top: $JssorEasing$.$EaseInCubic, $Zoom: $JssorEasing$.$EaseInCubic }, $Opacity: 2, $During: { $Top: [0, 0.5]} },
              //ZM*JUP|RB
              {$Duration: 1200, x: -0.8, y: -0.5, $Zoom: 11, $Easing: { $Left: $JssorEasing$.$EaseLinear, $Top: $JssorEasing$.$EaseInCubic, $Zoom: $JssorEasing$.$EaseInCubic }, $Opacity: 2, $During: { $Top: [0, 0.5]} },

              //ZM*WVR|LT
              {$Duration: 1200, x: 0.5, y: 0.3, $Zoom: 11, $Easing: { $Left: $JssorEasing$.$EaseLinear, $Top: $JssorEasing$.$EaseInWave }, $Opacity: 2, $Round: { $Rotate: 0.8} },
              //ZM*WVR|RT
              {$Duration: 1200, x: -0.5, y: 0.3, $Zoom: 11, $Easing: { $Left: $JssorEasing$.$EaseLinear, $Top: $JssorEasing$.$EaseInWave }, $Opacity: 2, $Round: { $Rotate: 0.8} },
              //ZM*WVR|TL
              {$Duration: 1200, x: 0.3, y: 0.5, $Zoom: 11, $Easing: { $Left: $JssorEasing$.$EaseInWave, $Top: $JssorEasing$.$EaseLinear }, $Opacity: 2, $Round: { $Rotate: 0.8} },
              //ZM*WVR|BL
              {$Duration: 1200, x: 0.3, y: -0.5, $Zoom: 11, $Easing: { $Left: $JssorEasing$.$EaseInWave, $Top: $JssorEasing$.$EaseLinear }, $Opacity: 2, $Round: { $Rotate: 0.8} },

              //RTT|10
              {$Duration: 700, $Zoom: 11, $Rotate: 1, $Easing: { $Zoom: $JssorEasing$.$EaseInExpo, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInExpo }, $Opacity: 2, $Round: { $Rotate: 0.8} },

              //RTTL|R
              {$Duration: 700, x: -0.6, $Zoom: 11, $Rotate: 1, $Easing: { $Left: $JssorEasing$.$EaseInCubic, $Zoom: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInCubic }, $Opacity: 2, $Round: { $Rotate: 0.8} },
              //RTTL|B
              {$Duration: 700, y: -0.6, $Zoom: 11, $Rotate: 1, $Easing: { $Top: $JssorEasing$.$EaseInCubic, $Zoom: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInCubic }, $Opacity: 2, $Round: { $Rotate: 0.8} },

              //RTTS|R
              {$Duration: 700, x: -0.6, $Zoom: 1, $Rotate: 1, $Easing: { $Left: $JssorEasing$.$EaseInQuad, $Zoom: $JssorEasing$.$EaseInQuad, $Rotate: $JssorEasing$.$EaseInQuad, $Opacity: $JssorEasing$.$EaseOutQuad }, $Opacity: 2, $Round: { $Rotate: 1.2} },
              //RTTS|B
              {$Duration: 700, y: -0.6, $Zoom: 1, $Rotate: 1, $Easing: { $Top: $JssorEasing$.$EaseInQuad, $Zoom: $JssorEasing$.$EaseInQuad, $Rotate: $JssorEasing$.$EaseInQuad, $Opacity: $JssorEasing$.$EaseOutQuad }, $Opacity: 2, $Round: { $Rotate: 1.2} },

              //RTT*JDN|RT
              {$Duration: 1000, x: -0.8, y: 0.5, $Zoom: 11, $Rotate: 0.2, $Easing: { $Left: $JssorEasing$.$EaseLinear, $Top: $JssorEasing$.$EaseOutCubic, $Zoom: $JssorEasing$.$EaseInCubic }, $Opacity: 2, $During: { $Top: [0, 0.5]} },
              //RTT*JDN|LB
              {$Duration: 1000, x: 0.8, y: -0.5, $Zoom: 11, $Rotate: 0.2, $Easing: { $Left: $JssorEasing$.$EaseLinear, $Top: $JssorEasing$.$EaseOutCubic, $Zoom: $JssorEasing$.$EaseInCubic }, $Opacity: 2, $During: { $Top: [0, 0.5]} },
              //RTT*JUP|RB
              { $Duration: 1000, x: -0.8, y: -0.5, $Zoom: 11, $Rotate: 0.2, $Easing: { $Left: $JssorEasing$.$EaseLinear, $Top: $JssorEasing$.$EaseInCubic, $Zoom: $JssorEasing$.$EaseInCubic }, $Opacity: 2, $During: { $Top: [0, 0.5] } },
              { $Duration: 1000, x: -0.5, y: 0.8, $Zoom: 11, $Rotate: 1, $Easing: { $Left: $JssorEasing$.$EaseInCubic, $Top: $JssorEasing$.$EaseLinear, $Zoom: $JssorEasing$.$EaseInCubic }, $Opacity: 2, $During: { $Left: [0, 0.5] }, $Round: { $Rotate: 0.5 } },
              //RTT*JUP|BR
              {$Duration: 1000, x: -0.5, y: -0.8, $Zoom: 11, $Rotate: 0.2, $Easing: { $Left: $JssorEasing$.$EaseInCubic, $Top: $JssorEasing$.$EaseLinear, $Zoom: $JssorEasing$.$EaseInCubic }, $Opacity: 2, $During: { $Left: [0, 0.5]} },

              //R|IB
              {$Duration: 900, x: -0.6, $Easing: { $Left: $JssorEasing$.$EaseInOutBack }, $Opacity: 2 },
              //B|IB
              {$Duration: 900, y: -0.6, $Easing: { $Top: $JssorEasing$.$EaseInOutBack }, $Opacity: 2 },

            ];

            var options = {
              $AutoPlay: true,                                    //[Optional] Whether to auto play, to enable slideshow, this option must be set to true, default value is false
              $AutoPlaySteps: 1,                                  //[Optional] Steps to go for each navigation request (this options applys only when slideshow disabled), the default value is 1
              $AutoPlayInterval: 4000,                            //[Optional] Interval (in milliseconds) to go for next slide since the previous stopped if the slider is auto playing, default value is 3000
              $PauseOnHover: 1,                               //[Optional] Whether to pause when mouse over if a slider is auto playing, 0 no pause, 1 pause for desktop, 2 pause for touch device, 3 pause for desktop and touch device, 4 freeze for desktop, 8 freeze for touch device, 12 freeze for desktop and touch device, default value is 1

              $ArrowKeyNavigation: true,   			            //[Optional] Allows keyboard (arrow key) navigation or not, default value is false
              $SlideDuration: 500,                                //[Optional] Specifies default duration (swipe) for slide in milliseconds, default value is 500
              $MinDragOffsetToSlide: 20,                          //[Optional] Minimum drag offset to trigger slide , default value is 20
              //$SlideWidth: 600,                                 //[Optional] Width of every slide in pixels, default value is width of 'slides' container
              //$SlideHeight: 300,                                //[Optional] Height of every slide in pixels, default value is height of 'slides' container
              $SlideSpacing: 0, 					                //[Optional] Space between each slide in pixels, default value is 0
              $DisplayPieces: 1,                                  //[Optional] Number of pieces to display (the slideshow would be disabled if the value is set to greater than 1), the default value is 1
              $ParkingPosition: 0,                                //[Optional] The offset position to park slide (this options applys only when slideshow disabled), default value is 0.
              $UISearchMode: 1,                                   //[Optional] The way (0 parellel, 1 recursive, default value is 1) to search UI components (slides container, loading screen, navigator container, arrow navigator container, thumbnail navigator container etc).
              $PlayOrientation: 1,                                //[Optional] Orientation to play slide (for auto play, navigation), 1 horizental, 2 vertical, 5 horizental reverse, 6 vertical reverse, default value is 1
              $DragOrientation: 3,                                //[Optional] Orientation to drag slide, 0 no drag, 1 horizental, 2 vertical, 3 either, default value is 1 (Note that the $DragOrientation should be the same as $PlayOrientation when $DisplayPieces is greater than 1, or parking position is not 0)

              $SlideshowOptions: {                                //[Optional] Options to specify and enable slideshow or not
                $Class: $JssorSlideshowRunner$,                 //[Required] Class to create instance of slideshow
                $Transitions: _SlideshowTransitions,            //[Required] An array of slideshow transitions to play slideshow
                $TransitionsOrder: 1,                           //[Optional] The way to choose transition to play slide, 1 Sequence, 0 Random
                $ShowLink: true                                    //[Optional] Whether to bring slide link on top of the slider when slideshow is running, default value is false
              },

              $CaptionSliderOptions: {                            //[Optional] Options which specifies how to animate caption
                $Class: $JssorCaptionSlider$,                   //[Required] Class to create instance to animate caption
                $CaptionTransitions: _CaptionTransitions,       //[Required] An array of caption transitions to play caption, see caption transition section at jssor slideshow transition builder
                $PlayInMode: 1,                                 //[Optional] 0 None (no play), 1 Chain (goes after main slide), 3 Chain Flatten (goes after main slide and flatten all caption animations), default value is 1
                $PlayOutMode: 3                                 //[Optional] 0 None (no play), 1 Chain (goes before main slide), 3 Chain Flatten (goes before main slide and flatten all caption animations), default value is 1
              },

              $BulletNavigatorOptions: {                                //[Optional] Options to specify and enable navigator or not
                $Class: $JssorBulletNavigator$,                       //[Required] Class to create navigator instance
                $ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
                $AutoCenter: 0,                                 //[Optional] Auto center navigator in parent container, 0 None, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
                $Steps: 1,                                      //[Optional] Steps to go for each navigation request, default value is 1
                $Lanes: 1,                                      //[Optional] Specify lanes to arrange items, default value is 1
                $SpacingX: 10,                                   //[Optional] Horizontal space between each item in pixel, default value is 0
                $SpacingY: 10,                                   //[Optional] Vertical space between each item in pixel, default value is 0
                $Orientation: 1                                 //[Optional] The orientation of the navigator, 1 horizontal, 2 vertical, default value is 1
              },

              $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$,              //[Requried] Class to create arrow navigator instance
                $ChanceToShow: 2                                //[Required] 0 Never, 1 Mouse Over, 2 Always
              }
            };

            var jssor_slider1 = new $JssorSlider$(containerId, options);
            //responsive code begin
            //you can remove responsive code if you don't want the slider scales while window resizes
            function ScaleSlider() {
              var parentWidth = jssor_slider1.$Elmt.parentNode.clientWidth;
              if (parentWidth)
                jssor_slider1.$ScaleWidth(Math.min(parentWidth, 1200));
              else
                $Jssor$.$Delay(ScaleSlider, 30);
            }

            ScaleSlider();
            $Jssor$.$AddEvent(window, "load", ScaleSlider);

            $Jssor$.$AddEvent(window, "resize", $Jssor$.$WindowResizeFilter(window, ScaleSlider));
            $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
            //responsive code end
          };
        </script>

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
<!-- use jssor.slider.min.js instead for release -->
<!-- jssor.slider.min.js = (jssor.js + jssor.slider.js) -->
<script type="text/javascript" src="/resources/js/jssor.js"></script>
<script type="text/javascript" src="/resources/js/jssor.slider.js"></script>

</body>
</html>
