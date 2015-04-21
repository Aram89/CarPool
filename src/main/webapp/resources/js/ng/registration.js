var registration = angular.module('registration', []);
registration.controller('registrationController', function($scope, $http) {
	
	$scope.registration = function() {
		$http.post('' , $scope.user)
		.success(function(data) {
			console.log(data);
		});
	};
	
	
});