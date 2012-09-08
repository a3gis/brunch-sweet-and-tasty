function Router($routeProvider, $locationProvider, config) {
	
	$routeProvider
		.when('/hello', {templateUrl: 'templates/hello.html'})
		.when('/page1', {templateUrl: 'templates/page1.html'})
		.otherwise({redirectTo: '/hello'})

	$locationProvider.html5Mode(true)
}

Router.$inject = ['$routeProvider', '$locationProvider'];

module.exports = Router;