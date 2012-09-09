function HelloCtrl($scope) {
	$scope.title = "Hello world!"
	$scope.name = "John Smith"
	$scope.people = ["John", "Nick", "Bil"]
	$scope.average = [1,65,2,77,34].average()

	$scope.sayHello = function() {
		$scope.title = "Hello, " + $scope.name + "!"
	}
}

HelloCtrl.$inject = ['$scope']

module.exports = HelloCtrl;