# Controllers go here and are loaded into app/initialize
 
BaseCtrl = ($scope, $location) ->	
	$scope.getClass = (id) ->
		if $location.path().substring(0, id.length) == id then 'active' else ''
		
module.exports.BaseCtrl = BaseCtrl


HelloCtrl = ($scope) ->
	$scope.title = "Hello world!"
	$scope.name = "John Smith"

	$scope.sayHello = ->
		$scope.title = "Hello, " + $scope.name + "!"

module.exports.HelloCtrl = HelloCtrl