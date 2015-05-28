<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
					<a class="page-scroll" href="../"></a>
				</li>
				<li>
					<a class="page-scroll" href="../#join">Join</a>
				</li>
				<li>
					<a class="page-scroll" href="../#find">Find</a>
				</li>
				<li>
					<a class="page-scroll" href="../#about">About</a>
				</li>
				<li>
					<a class="page-scroll" href="#">Map</a>
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
					<input class="form-control" type="password" ng-model="user.password" placeholder="Password" />
				</div>
				<button type="submit" class="btn btn-default">Login</button>
			</form>
		</div>

	</div>
</nav>



<!-- Intro Section -->
<section id="map" class="map-section section">
	<div class="container">
		<div class="row">

			<ng-include src="'map-form.html'"></ng-include>


		</div>
	</div>
</section>




<!-- angular templates -->
<script type="text/ng-template" id="map-form.html">
	<!-- MAP -->


	<div class="form-horizontal col-md-12" ng-controller="mapController" >
		<div class="row">
			<div class="col-md-10">

				<div class="form-group">
					<label for="fromLocation" class="col-sm-2 control-label">From Location</label>
					<div class="col-sm-10">
						<input class="form-control" id="fromLocation" type="text" ng-model="route.from"/>
					</div>
				</div>
				<div class="form-group">
					<label for="toLocation" class="col-sm-2 control-label">To Location</label>
					<div class="col-sm-10">
						<input class="form-control" id="toLocation" type="text" ng-model="route.to"/>
					</div>
				</div>

				<div class="form-group">
					<label for="toLocation" class="col-sm-2 control-label">Start time</label>
					<div class="col-sm-3">
						<input class="form-control" id="startTime" type="text" ng-model="route.startTime"/>
					</div>
					<label class="col-sm-2 control-label">&nbsp;</label>
					<div class="col-sm-3 checkbox">
						<label>
							<input type="checkbox" checked ng-model="route.periodic"> is Periodic
						</label>
					</div>
				</div>
				<div class="form-group" ng-show="!route.periodic">
					<label for="toLocation" class="col-sm-2 control-label">Start Date</label>
					<div class="col-sm-5">
						<input class="form-control" id="startDate" type="text" ng-model="route.startDate"/>
					</div>
				</div>
				<div class="form-group" ng-show="route.periodic">
					<label class="col-sm-2 control-label">Week dayes</label>
					<div class="col-sm-1 checkbox">
						<label>
							<input type="checkbox" ng-model="route.week.monday"> Monday
						</label>
					</div>
					<div class="col-sm-1 checkbox">
						<label>
							<input type="checkbox" ng-model="route.week.tuesday"> Tuesday
						</label>
					</div>
					<div class="col-sm-1 checkbox">
						<label>
							<input type="checkbox" ng-model="route.week.wednesday"> Wednesday
						</label>
					</div>
					<div class="col-sm-1 checkbox">
						<label>
							<input type="checkbox" ng-model="route.week.thursday"> Thursday
						</label>
					</div>
					<div class="col-sm-1 checkbox">
						<label>
							<input type="checkbox" ng-model="route.week.friday"> Friday
						</label>
					</div>
					<div class="col-sm-1 checkbox">
						<label>
							<input type="checkbox" ng-model="route.week.saturday"> Saturday
						</label>
					</div>
					<div class="col-sm-1 checkbox">
						<label>
							<input type="checkbox" ng-model="route.week.sunday"> Sunday
						</label>
					</div>
				</div>


			</div>
			<div class="col-md-2">
				<div class="form-group">
					<label class="col-sm-6 control-label">Length</label>
					<label class="col-sm-6 control-label">12 Km</label>
				</div>
				<div class="form-group">
					<label class="col-sm-6 control-label">Time</label>
					<label class="col-sm-6 control-label">123 m</label>
				</div>
			</div>
		</div>



		<div class="col-md-12 column angular-google-map-container">
			<ui-gmap-google-map
					id="map-canvas"
					center="map.center"
					zoom="map.zoom"
					draggable="true"
					options="map.options"
					control="map.control"
					events="map.events"
					>
			</ui-gmap-google-map>
		</div>
	</div>

	<!-- END MAP -->


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