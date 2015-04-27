<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
      <title>
         (Directions Service)
      </title>
	  <link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
	  <link href="http://fonts.googleapis.com/css?family=Open+Sans" rel='stylesheet' type='text/css' />
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/3.7.0/lodash.min.js"></script>
	  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
	  <script src="resources/js/angular-google-maps.min.js"></script>
	  <script src="resources/js/ng/map.js"></script>
	  <style>
	  .angular-google-map-container { height: 600px;}
	  </style>
   </head>
   <body>
	<header>
		<hgroup>

		</hgroup>
	</header>
	<nav>
		<menu>

		</menu>
	</nav>
  
	<div class="container" ng-app="directions">
        <div class="row text-center pad-top" ng-controller="mapController">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-6">
						<input id="from-location" name="from-location" class="form-control" placeholder="From Location" type="text" ng-model="carpool.from">
					</div>
					<div class="col-md-6">
						<input id="to-location" name="to-location" class="form-control" placeholder="To Location" type="text" ng-model="carpool.to">
					</div>
				</div>
			</div>
			<div class="col-md-12">
				<div class="row">
				{{carpool}}
				</div>
			</div>
            <div class="col-md-12">
			
			
				<ui-gmap-google-map 
					id="map-canvas"
					center="map.center"
					zoom="map.zoom"
					draggable="true"
					options="map.options"
					control="map.control"
					events="map.events"
				></ui-gmap-google-map>
				
			
                
            </div>
        </div>
    </div>
  
	<footer>
	</footer>
   </body>
</html>