(function () {
	'use strict';

	var carpool = angular.module('carpool', ['uiGmapgoogle-maps', 'ui.bootstrap']);
	carpool.config(function(uiGmapGoogleMapApiProvider) {
		uiGmapGoogleMapApiProvider.configure({
			//    key: 'your api key',
			v: '3.17',
			libraries: 'places'
		});
	});

	carpool.controller('registrationController', function($scope, $http) {

		$scope.user = {};
		$scope.enable = true;

		$scope.registration = function() {
			$scope.enable = false;
			$http({
				url: 'user/create',
				method: 'POST',
				data: $scope.user
			})
			.success(function(data) {
				if(data.result) {
					window.location.reload();
				} else {
					$scope.enable = true;
				}
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
			var findFromInput        = document.getElementById('searchFrom'),
				findToInput          = document.getElementById('searchTo'),
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
		$scope.loading = false;

		$scope.login = function(){
			$scope.loading = true;
			$http({
				url : 'user/login',
				method: 'POST',
				data  : $scope.user
			})
			.success(function(data){
				if(data.result) {
					window.location.reload();
				} else {
					$scope.loading = false;
					alert(data.errorString);
				}
			})
			.error(function(){
				console.log(arguments);
				alert('Error');
			});
		};
	});

	carpool.controller('mapController', function($scope, $filter, uiGmapGoogleMapApi) {
		$scope.route = {};
		$scope.route.latlng = {};
		$scope.route.week = {
			monday   : true,
			tuesday  : true,
			wednesday: true,
			thursday : true,
			friday   : true,
			saturday : false,
			sunday   : false
		};

		var projectionChanged = function(map, eventName, originalEventArgs){
			var fromLocation  = document.getElementById('from_location'),
				toLocation    = document.getElementById('to_location'),
				fromLocationAutocomplete = new google.maps.places.Autocomplete(fromLocation, {types: ['geocode']}),
				toLocationAutocomplete   = new google.maps.places.Autocomplete(toLocation, {types: ['geocode']});
			fromLocationAutocomplete.bindTo('bounds', map);
			toLocationAutocomplete.bindTo('bounds', map);
			google.maps.event.addListener(fromLocationAutocomplete, 'place_changed', function() {
				var place = fromLocationAutocomplete.getPlace();
				if (!place.geometry) {
					$scope.route.fromLat = 0;
					$scope.route.fromLng = 0;
					$scope.route.latlng.from = '';
					return;
				}
				$scope.route.fromLat = place.geometry.location.lat();
				$scope.route.fromLng = place.geometry.location.lng();
				$scope.route.latlng.from = $scope.route.fromLat +', '+$scope.route.fromLng;
				$scope.calcRoute();
			});
			google.maps.event.addListener(toLocationAutocomplete, 'place_changed', function() {
				var place = toLocationAutocomplete.getPlace();
				if (!place.geometry) {
					$scope.route.toLat = 0;
					$scope.route.toLng = 0;
					$scope.route.latlng.to = '';
					return;
				}

				$scope.route.toLat = place.geometry.location.lat();
				$scope.route.toLng = place.geometry.location.lng();
				$scope.route.latlng.to = $scope.route.toLat +', '+$scope.route.toLng;
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
					$scope.route.from = startLeg.start_address;
					$scope.route.to   = endLeg.end_address;
					$scope.route.latlng.from = startLeg.start_location.k +', ' +startLeg.start_location.B;
					$scope.route.latlng.to   = startLeg.end_location.k +', ' +startLeg.end_location.B;
					$scope.route.fromLat = startLeg.start_location.k;
					$scope.route.fromLng = startLeg.start_location.B;
					$scope.route.toLat = startLeg.end_location.k;
					$scope.route.toLng = startLeg.end_location.B;
					$scope.$apply();
				}
			});
			$scope.calcRoute = function () {
				if($scope.route.from && $scope.route.to) {
					var directionsService = new maps.DirectionsService();
					directionsDisplay.setMap($scope.map.control.getGMap());
					var request = {
						origin:      $scope.route.latlng.from,
						destination: $scope.route.latlng.to,
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


		$scope.saveRoute = function (form) {
			if(form.$valid) {
				var saveRoute = angular.copy($scope.route);

				saveRoute.startDate = $filter('date')(saveRoute.startDate, 'yyyy-MM-dd');
				saveRoute.startTime = $filter('date')(saveRoute.startTime, 'HH:mm');

				console.log(saveRoute);
				$http({
					url: 'route/create',
					method: 'POST',
					data: saveRoute
				})
					.success(function (data) {
						if (data.result) {
							window.location.reload();
						} else {
							//$scope.enable = true;
						}
					});
			}

		};

	});

})();
