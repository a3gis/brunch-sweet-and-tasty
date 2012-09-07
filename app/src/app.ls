angular.module('app.controllers', [])
angular.module('app.directives', [])

App = angular.module('app', [
	'ngCookies'
	'ngResource'
	'app.controllers'
	'app.directives'
	'app.services'
])

App.config([
	'$routeProvider'
	'$locationProvider'

	($routeProvider, $locationProvider, config) ->
		
		$routeProvider
			.when('/hello', {templateUrl: 'templates/hello.html'})
			.when('/page1', {templateUrl: 'templates/page1.html'})
			.otherwise({redirectTo: '/hello'})

		$locationProvider.html5Mode(true)
])
