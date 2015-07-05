<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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


<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

<!-- Navigation -->
<%@include file="./navigation.jsp"%>




<!-- Intro Section -->
<section id="map" class="map-section section">
	<div class="container">
		<div class="row" ng-controller="mapController">

			<ng-include src="'map-form.html'"></ng-include>


		</div>
	</div>
</section>




<!-- angular templates -->
<script type="text/ng-template" id="map-form.html">
	<!-- MAP -->

	<div class="col-md-4">
		<form name="routeForm" ng-submit="saveRoute(routeForm)" novalidate>

			<div class="form-group">
				<label for="from_location" >From</label>
				<input class="form-control" id="from_location" type="text" ng-model="route.from" required/>
			</div>

			<div class="form-group">
				<label for="to_location" >To</label>
				<input class="form-control" id="to_location" type="text" ng-model="route.to" required/>
			</div>


			<div class="form-group">

				<label>Start Time</label>

				<div class="row">
					<div class="col-xs-6">
						<timepicker
								id="startTime"
								ng-model="route.startTime"
								hour-step="1"
								minute-step="15"
								show-meridian="false">
						</timepicker>
					</div>
					<div class="col-xs-6">
						<div class="checkbox">
							<label>
								<input type="checkbox" checked ng-model="route.periodic"> is Periodic
							</label>
						</div>
						<button type="submit" class="btn btn-success btn-carpool" ng-disabled="routeForm.$invalid">Save Route</button>
					</div>
				</div>

			</div>

			<div class="form-group" ng-hide="route.periodic">
				<label>Start Day</label>
				<datepicker
						id="startDate"
						ng-model="route.startDate">
				</datepicker>
			</div>

			<div class="form-group" ng-show="route.periodic">
				<label>Week Days</label>

				<div class="checkbox">
					<label>
						<input type="checkbox" ng-model="route.week.monday"> Monday
					</label>
				</div>
				<div class="checkbox">
					<label>
						<input type="checkbox" ng-model="route.week.tuesday"> Tuesday
					</label>
				</div>
				<div class="checkbox">
					<label>
						<input type="checkbox" ng-model="route.week.wednesday"> Wednesday
					</label>
				</div>
				<div class="checkbox">
					<label>
						<input type="checkbox" ng-model="route.week.thursday"> Thursday
					</label>
				</div>
				<div class="checkbox">
					<label>
						<input type="checkbox" ng-model="route.week.friday"> Friday
					</label>
				</div>
				<div class="checkbox">
					<label>
						<input type="checkbox" ng-model="route.week.saturday"> Saturday
					</label>
				</div>
				<div class="checkbox">
					<label>
						<input type="checkbox" ng-model="route.week.sunday"> Sunday
					</label>
				</div>
			</div>

		</form>
	</div>

	<div class="col-md-8 angular-google-map-container">
		<ui-gmap-google-map
				id="map_canvas"
				center="map.center"
				zoom="map.zoom"
				draggable="true"
				options="map.options"
				control="map.control"
				events="map.events"
				>
		</ui-gmap-google-map>
	</div>
	<!-- END MAP -->

</script>

<%@include file="./scripts.jsp" %>

</body>
</html>