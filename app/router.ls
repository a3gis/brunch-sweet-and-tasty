function Router($routeProvider, $locationProvider)
	$routeProvider
		.when('/hello', {templateUrl: 'partials/hello.html'})
		.when('/page1', {templateUrl: 'partials/page1.html'})
		.otherwise({redirectTo: '/hello'})

	$locationProvider.html5Mode(true)

module.exports = Router;