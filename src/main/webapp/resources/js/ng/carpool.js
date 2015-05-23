(function () {
	'use strict';

	var carpool = angular.module('carpool', ['uiGmapgoogle-maps']);
	carpool.config(function(uiGmapGoogleMapApiProvider) {
		uiGmapGoogleMapApiProvider.configure({
			//    key: 'your api key',
			v: '3.17',
			libraries: 'places'
		});
	});

	carpool.controller('registrationController', function($scope, $http) {
		
		$scope.registration = function() {
			$http.post('user/create' , $scope.user)
			.success(function(data) {
				console.log(data);
			});
		};
		
		
	});

	carpool.directive('ngRemoteCheck', ['$http', function ($http) {
		return {
			restrict : 'A',
			require  : '?ngModel',
			link     : function (scope, elem, attrs, ctrl) {
				if (!ctrl) return;
				if (!attrs['ngRemoteCheck']) return;
				
				var checkUrl = attrs['ngRemoteCheck'],
				    checkDuration = 333, oldVal = '', propName = 'name',
				    timeoutId , isValid = false;
				if(attrs['id']) propName = attrs['id'];
				if(attrs['name']) propName = attrs['name'];

				

				var validator = function (value) {
					ctrl.$$rawModelValue = value;
					ctrl.$validate();
					if(ctrl.$error) {
						var k = 0, key;
						for(key in ctrl.$error) {
							if(key != 'remote') ++k;
						}
						if(k) {
							ctrl.$setValidity('remote', true);
							return value;
						}
					}
					
					isValid = oldVal == value;
					if(!value) isValid = true;
					if(!isValid) {
						if(timeoutId) clearTimeout(timeoutId);
						timeoutId = setTimeout(function(){
							$http.get(checkUrl + '?'+propName+'='+value)
							.success(function(data, status, headers, config) {
								isValid = data.result;
								ctrl.$setValidity('remote', isValid);
								if(isValid) oldVal = value;
							});
						}, checkDuration);
					}
					ctrl.$setValidity('remote', isValid);
					return value;
				};

				ctrl.$parsers.unshift(validator);
				ctrl.$formatters.push(validator);
				attrs.$observe('ngRemoteCheck', function () {
					validator(ctrl.$viewValue);
				});

			}
		};
	}]);

	carpool.directive('ngMatch', ['$parse', function ($parse) {

		return {
			restrict : 'A',
			require  : '?ngModel',
			link     : function (scope, elem, attrs, ctrl) {
				if (!ctrl) return;
				if (!attrs['ngMatch']) return;

				var firstPassword = $parse(attrs['ngMatch']);

				var validator = function (value) {
					var temp = firstPassword(scope),
					v = value === temp;
					ctrl.$setValidity('match', v);
					return value;
				};

				ctrl.$parsers.unshift(validator);
				ctrl.$formatters.push(validator);
				attrs.$observe('ngMatch', function () {
					validator(ctrl.$viewValue);
				});

			}
		};

	}]);

	carpool.controller('findController', function($scope, $http, uiGmapGoogleMapApi) {
		$('#searchDateBlock').datetimepicker({
			sideBySide: true,
			format : 'DD/MM/YYYY HH:mm',
			defaultDate: new Date()
		});
		uiGmapGoogleMapApi.then(function(maps) {
			var findFromInput = document.getElementById('searchFrom'),
				findToInput = document.getElementById('searchTo'),
				findFromAutocomplete = new google.maps.places.Autocomplete(findFromInput, {types: ['geocode']}),
				findToAutocomplete   = new google.maps.places.Autocomplete(findToInput, {types: ['geocode']});

			google.maps.event.addListener(findFromAutocomplete, 'place_changed', function() {

			});
			google.maps.event.addListener(findToAutocomplete, 'place_changed', function() {

			});
		});
	});

	carpool.controller('loginController', function($scope, $http) {
		$scope.user = {};

		$scope.login = function(){
			$http.post( 'user/login', $scope.user)
			.success(function(data){
				if(data.result) {
					window.location.reload();
				} else {
					alert(data.errorString);
				}
			});
		};
	});

	carpool.controller('mapController', function($scope, uiGmapGoogleMapApi) {
		$scope.carpool = {};
		$scope.carpool.latlng = {};

		var projectionChanged = function(map, eventName, originalEventArgs){
			var fromLocation = document.getElementById('fromLocation'),
				toLocation = document.getElementById('toLocation'),
				fromLocationAutocomplete = new google.maps.places.Autocomplete(fromLocation, {types: ['geocode']}),
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
