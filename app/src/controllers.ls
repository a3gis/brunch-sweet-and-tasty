# Controllers go here and are loaded into app/initialize
 
BaseCtrl = ($scope, $location) ->
	$scope.getClass = (id) ->
		if $location.path().substring(0, id.length) == id
			'active'
		else
			''
		
module.exports.BaseCtrl = BaseCtrl


HelloCtrl = ($scope) ->
	$scope.title = "Hello world!"
	$scope.name = "John Smith"
	$scope.people = ["John", "Nick", "Bil"]
	$scope.average = [1,65,2,77,34].average()

	$scope.sayHello = ->
		$scope.title = "Hello, " + $scope.name + "!"

module.exports.HelloCtrl = HelloCtrl