module = {}

module.HelloCtrl = <[$scope]> +++ ($scope) ->
	$scope.title = "Hello world!"
	$scope.name = "John Smith"
	$scope.average = [1,65,2,77,34].average()

	$scope.sayHello = ->
		$scope.title = "Hello, " + $scope.name + "!"

angular.module('app.controllers').controller(module)