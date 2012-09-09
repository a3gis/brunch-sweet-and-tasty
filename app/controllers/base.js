function BaseCtrl($scope, $location) {
	$scope.getClass = function(id) {
		if($location.path().substring(0, id.length) == id) {
			return 'active';
		} else {
			return '';
		}
	}
}

BaseCtrl.$inject = ['$scope', '$location']

module.exports = BaseCtrl;
var a = 5;