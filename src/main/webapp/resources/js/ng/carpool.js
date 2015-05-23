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
			.success(function(){

			});
		};
	});

})();
