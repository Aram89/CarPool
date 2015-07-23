(function () {
	'use strict';

	var carpool = angular.module('carpool', ['uiGmapgoogle-maps','ngSanitize', 'ui.bootstrap','ui.select']);
	carpool.config(function(uiGmapGoogleMapApiProvider) {
		uiGmapGoogleMapApiProvider.configure({
			//    key: 'your api key',
			v: '3.17',
			libraries: 'places'
		});
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

	carpool.controller('RegistrationController', function($scope, $http) {

		$scope.user = {};
		$scope.enable = true;

		$scope.registration = function() {
			$scope.enable = false;
			$http({
				url: 'user/create',
				method: 'POST',
				data: $scope.user
			})
			.success(function() {
				window.location.reload();
			})
			.error(function(){
				$scope.enable = true;
				alert('Error');
			});
		};


	});

	carpool.controller('LoginController', function ($scope, $http) {
		$scope.user = {};
		$scope.loading = false;

		$scope.login = function() {
			$scope.loading = true;
			$http({
				url : 'user/login',
				method: 'POST',
				data  : $scope.user
			})
			.success(function(data){
				window.location.reload();
			})
			.error(function(){
				$scope.loading = false;
				alert('Error');
			});
		};

		$scope.logout = function(){
			$scope.loading = true;
			$http({
				url : 'user/logout',
				method: 'GET'
			})
			.success(function(){
				window.location.reload();
			})
			.error(function(){
				$scope.loading = false;
				alert('Error');
			});
		};
	});

	carpool.controller('FindController', function ($scope, $http, uiGmapGoogleMapApi) {
		$('#searchDateBlock').datetimepicker({
			sideBySide: true,
			format : 'DD/MM/YYYY HH:mm',
			defaultDate: new Date()
		});
		$scope.loading = false;
		$scope.findResult = [];
		$scope.find = {
			startLatitude  : 0,
		 	startLongitude : 0,
			endLatitude    : 0,
			endLongitude   : 0
		};
		uiGmapGoogleMapApi.then(function(maps) {
			var findFromInput        = document.getElementById('searchFrom'),
				findToInput          = document.getElementById('searchTo'),
				findFromAutocomplete = new google.maps.places.Autocomplete(findFromInput, {types: ['geocode']}),
				findToAutocomplete   = new google.maps.places.Autocomplete(findToInput, {types: ['geocode']});

			google.maps.event.addListener(findFromAutocomplete, 'place_changed', function() {
				var place = findFromAutocomplete.getPlace();
				if (!place.geometry) {
					$scope.find.startLatitude = 0;
					$scope.find.startLongitude = 0;
				} else if(place.geometry.location.lat() && place.geometry.location.lng()) {
					$scope.find.startLatitude = place.geometry.location.lat();
					$scope.find.startLongitude = place.geometry.location.lng();
				}
			});
			google.maps.event.addListener(findToAutocomplete, 'place_changed', function() {
				var place = findToAutocomplete.getPlace();
				if (!place.geometry) {
					$scope.find.endLatitude = 0;
					$scope.find.endLongitude = 0;
				} else if(place.geometry.location.lat() && place.geometry.location.lng()) {
					$scope.find.endLatitude = place.geometry.location.lat();
					$scope.find.endLongitude = place.geometry.location.lng();
				}
			});
		});
		$scope.doFind = function() {
			$scope.loading = true;
			var date = $('#searchDateBlock').data("DateTimePicker").date();

			$scope.find.startDate = date.format('YYYY-MM-DD');
			$scope.find.startTime = date.format('HH:mm:00');

			$http({
				url : 'route/find',
				method: 'POST',
				data: $scope.find
			})
			.success(function(data) {
				$scope.loading = false;
				$scope.findResult = data || [];
			})
			.error(function() {
				$scope.loading = false;
				alert('Error');
			});
		};

		$scope.doFind();
	});

	carpool.controller('CarsController', function ($rootScope, $scope, $http) {
		$rootScope.cars = [];
		var tmpCar;

		$scope.getCars = function() {
			$http({
				url : 'car/list',
				method: 'GET'
			})
			.success(function(cars) {
				$rootScope.cars = cars;
			})
			.error(function(){
				alert('Error');
			});
		};

		$scope.setEditableItem = function (obj, editable) {
			for(var i=0; i<$scope.cars.length; ++i) {
				if(obj && $scope.cars[i] === obj) {
					$scope.cars[i].editable = editable;
				} else {
					if($scope.cars[i].id) {
						$scope.cars[i].editable = false;
					} else {
						$scope.cars.splice(i, 1);
						i--;
					}
				}
			}
		};

		$scope.addNewCar = function() {
			var car = {id:0};
			$scope.cars.push(car);
			$scope.setEditableItem(car, true);
		};

		$scope.editCar = function(car) {
			tmpCar = angular.copy(car);
			$scope.setEditableItem(car, true);
		};

		$scope.deleteCar = function(car) {
			var name = car.model+' '+car.number;
			var r = confirm("You want to remove "+name+",\n Are You sure ?");
			if (r) {
				$http({
					url : 'car/delete',
					method: 'GET',
					params: {carId : car.id}
				})
				.success(function(){
					$scope.cars.splice($scope.cars.indexOf(car), 1);
					$scope.$apply();
				})
				.error(function(){
					alert('Error');
				});
			}
		};


		$scope.saveCar = function(car) {
			$scope.setEditableItem(car, false);
			if(car.id) {
				$http({
					url: 'car/edit',
					method: 'POST',
					data: car
				})
				.success(function () {
				})
				.error(function () {
					alert('Error');
				});
			} else {
				$http({
					url: 'car/create',
					method: 'POST',
					data: car
				})
				.success(function (carId) {
					car.id = carId;
				})
				.error(function () {
					alert('Error');
				});
			}
		};

		$scope.cancelEdit = function(car) {
			if(car.id) {
				var index = $scope.cars.indexOf(car);
				$scope.cars[index] = angular.copy(tmpCar);
			}
			tmpCar = null;
			$scope.setEditableItem(null, false);
		};

		$scope.getCars();
	});

	carpool.controller('ContactController', function ($scope) {
		$scope.contact = {};

		$scope.send = function (form) {
			if(form.$invalid) return;



		};
	});

	carpool.controller('RoutsController', function ($rootScope, $scope, $http, $filter, uiGmapGoogleMapApi) {
		$rootScope.routes = [];
		$scope.route = {
			monday   : true,
			tuesday  : true,
			wednesday: true,
			thursday : true,
			friday   : true,
			saturday : false,
			sunday   : false
		};
		$scope.route.latlng = {};
		$scope.$watch('cars', function() {
			if($rootScope.cars.length == 1) {
				$scope.route.car = $scope.cars[0];
			}
		});

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
					$scope.route.startLatitude = 0;
					$scope.route.startLongitude = 0;
					$scope.route.latlng.from = '';
					return;
				}
				if(place.geometry.location.lat() && place.geometry.location.lng()) {
					$scope.route.startLatitude = place.geometry.location.lat();
					$scope.route.startLongitude = place.geometry.location.lng();
					$scope.route.latlng.from = $scope.route.startLatitude + ', ' + $scope.route.startLongitude;
					$scope.calcRoute();
				}
			});
			google.maps.event.addListener(toLocationAutocomplete, 'place_changed', function() {
				var place = toLocationAutocomplete.getPlace();
				if (!place.geometry) {
					$scope.route.endLatitude = 0;
					$scope.route.endLongitude = 0;
					$scope.route.latlng.to = '';
					return;
				}
				if(place.geometry.location.lat() && place.geometry.location.lng()) {
					$scope.route.endLatitude = place.geometry.location.lat();
					$scope.route.endLongitude = place.geometry.location.lng();
					$scope.route.latlng.to = $scope.route.endLatitude + ', ' + $scope.route.endLongitude;
					$scope.calcRoute();
				}
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
					$scope.route.startPoint = startLeg.start_address;
					$scope.route.endPoint   = endLeg.end_address;
					$scope.route.latlng.from = startLeg.start_location.A +', ' +startLeg.start_location.F;
					$scope.route.latlng.to   = startLeg.end_location.A +', ' +startLeg.end_location.F;
					$scope.route.startLatitude = startLeg.start_location.A;
					$scope.route.startLongitude = startLeg.start_location.F;
					$scope.route.endLatitude = startLeg.end_location.A;
					$scope.route.endLongitude = startLeg.end_location.F;
					$scope.$apply();
				}
			});
			$scope.calcRoute = function () {
				if($scope.route.startPoint && $scope.route.endPoint) {
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

		$rootScope.openForAddRoute = function() {
			$scope.route.id = 0;
		};

		$scope.getRoutes = function() {
			$http({
				url: 'route/list',
				method: 'GET'
			})
			.success(function (routes) {
				$rootScope.routes = routes || [];
			})
			.error(function () {
				alert('Error');
			});
		};

		$rootScope.editRoute = function (route) {
			$scope.route = angular.copy(route);
			$scope.route.latlng = {
				from: route.startLatitude +', '+route.startLongitude,
				to: route.endLatitude +', '+route.endLongitude
			};
			$scope.route.startDate = route.startDate ? new Date(route.startDate) : new Date();
			$scope.route.startTime = route.startTime ? new Date(route.startTime) : new Date();
			for(var index in $scope.cars) {
				var car = $scope.cars[index];
				if(car.id == $scope.route.carId) {
					$scope.route.car = car;
					break;
				}
			}
			console.log($scope.route);

			$('#modal-container-routs').modal('show');
			return false;
		};

		$scope.saveRoute = function (form) {
			if(form.$valid) {
				var saveRoute = angular.copy($scope.route);

				saveRoute.startDate = $filter('date')(saveRoute.startDate, 'yyyy-MM-dd');
				saveRoute.startTime = $filter('date')(saveRoute.startTime, 'HH:mm');
				saveRoute.carId = saveRoute.car.id;
				delete saveRoute.latlng;
				delete saveRoute.car;

				if(saveRoute.id > 0) {
					$http({
						url: 'route/edit',
						method: 'POST',
						data: saveRoute
					})
					.success(function () {
						$('#modal-container-routs').modal('hide');
					})
					.error(function () {
						alert('Error');
					});
				} else {
					$http({
						url: 'route/create',
						method: 'POST',
						data: saveRoute
					})
					.success(function (routId) {
						saveRoute.id = routId;
						//$scope.route.id = routId;
						$scope.routes.push(saveRoute);
						$('#modal-container-routs').modal('hide');
					})
					.error(function () {
						alert('Error');
					});
				}
			}

		};

		$scope.deleteRoute = function () {
			$http({
				url: 'route/delete',
				method: 'GET',
				params: { routeId: $scope.route.id }
			})
			.success(function () {
				$scope.route.id = 0;
				$scope.routes.splice($scope.routes.indexOf($scope.route), 1);
				$('#modal-container-routs').modal('hide');
			})
			.error(function () {
				alert('Error');
			});
		};

		$scope.getRoutes();
	});

	carpool.controller('ProfileController', function($rootScope, $scope, $http){
		var profileData = {};
		$scope.profile = {};

		$rootScope.openProfile = function(){
			$http({
				url: 'user/get-profile-data',
				method: 'GET'
			}).success(function (profile) {
				$scope.profile = profile;
				profileData = angular.copy($scope.profile);
			})
			.error(function () {
				alert('Error');
			});
		};

		$scope.saveProfileData = function() {
			$http({
				url: 'user/save-profile-data',
				method: 'POST',
				data: $scope.profile
			}).success(function () {
				profileData = angular.copy($scope.profile);
				$('#modal-container-profile').modal('hide');
			})
			.error(function () {
				alert('Error');
			});
		};

		$scope.cancelProfileSave = function(){
			$scope.profile = angular.copy(profileData);
		};

	});

})();