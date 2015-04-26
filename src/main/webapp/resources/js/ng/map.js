(function () {
	'use strict';

	var directions = angular.module('directions', ['uiGmapgoogle-maps']);
	directions.config(function(uiGmapGoogleMapApiProvider) {
		uiGmapGoogleMapApiProvider.configure({
			//    key: 'your api key',
			v: '3.17',
			libraries: 'weather,geometry,visualization,places'
		});
	});
	
	directions.controller('mapController', function($scope, uiGmapGoogleMapApi) {
		$scope.carpool = {};
		$scope.carpool.latlng = {};
		
		var projectionChanged = function(map, eventName, originalEventArgs){
			var fromLocation = document.getElementById('from-location'),
				toLocation = document.getElementById('to-location'),
				fromLocationAutocomplete = new google.maps.places.Autocomplete(fromLocation),
				toLocationAutocomplete = new google.maps.places.Autocomplete(toLocation);
			fromLocationAutocomplete.bindTo('bounds', map);
			toLocationAutocomplete.bindTo('bounds', map);
			google.maps.event.addListener(fromLocationAutocomplete, 'place_changed', function() {
				var place = fromLocationAutocomplete.getPlace();
				if (!place.geometry) {
				  $scope.carpool.latlng.from = '';
				  return;
				}
				$scope.carpool.latlng.from = place.geometry.location.lat() +', '+place.geometry.location.lng();
				$scope.calcRoute();
			});
			google.maps.event.addListener(toLocationAutocomplete, 'place_changed', function() {
				var place = toLocationAutocomplete.getPlace();
				if (!place.geometry) {
				  $scope.carpool.latlng.to = '';
				  return;
				}
				$scope.carpool.latlng.to = place.geometry.location.lat() +', '+place.geometry.location.lng();
				$scope.calcRoute();
			});
			
		};
		
		uiGmapGoogleMapApi.then(function(maps) {
			var directionsDisplay = new maps.DirectionsRenderer({draggable: true});
			maps.event.addListener(directionsDisplay, 'directions_changed', function() {
				var directionPoints = directionsDisplay.getDirections(), legs, startLeg, endLeg;
				if(directionPoints.status == maps.DirectionsStatus.OK) {
					legs = directionPoints.routes[0].legs;
					startLeg = legs[0];
					endLeg   = legs[legs.length - 1];
					$scope.carpool.from = startLeg.start_address;
					$scope.carpool.to   = endLeg.end_address;
					$scope.carpool.latlng.from = startLeg.start_location.k +', ' +startLeg.start_location.B;
					$scope.carpool.latlng.to   = startLeg.end_location.k +', ' +startLeg.end_location.B;
					$scope.$apply();
				}
			});
			$scope.calcRoute = function () {
				if($scope.carpool.from && $scope.carpool.to) {
				var directionsService = new maps.DirectionsService();
				directionsDisplay.setMap($scope.map.control.getGMap());
				var request = {
					origin:      $scope.carpool.latlng.from,
					destination: $scope.carpool.latlng.to,
					// waypoints: ways,
					// optimizeWaypoints: true,
					travelMode: maps.TravelMode.WALKING
				};
				directionsService.route(request, function(response, status) {
					if (status == maps.DirectionsStatus.OK) {
					  directionsDisplay.setDirections(response);
					}
				  });
				}
				return;
			};
		});
		$scope.map = {
		  center: {
			latitude: 40.1533904,
			longitude: 44.4885671
		  },
		  options: {
			maxZoom: 20,
			minZoom: 3
		  },
		  zoom: 15,
		  control: {},
		  events: {
			  projection_changed: projectionChanged
		  }
		};
		
		/*$scope.registration = function() {
			$http.post('http://localhost/test.php' , $scope.user)
			.success(function(data) {
				console.log(data);
			});
		};
			
		
		 */
		
	});

})();
