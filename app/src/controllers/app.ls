module = {}

module.AppCtrl = <[$scope $location]> +++ ($scope, $location) ->

	$scope.getClass = (id) ->
		if $location.path().substring(0, id.length) == id then return 'active' else return ''

angular.module('app.controllers').controller(module)