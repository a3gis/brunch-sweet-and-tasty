angular.module('app.main', [])
	.controller('BaseCtrl', require('./controllers/base'))
	.controller('HelloCtrl', require('./controllers/hello'))
	
	.directive('appVersion', require('./directives/app_version'))
	
	.factory('version', require('./services/version'))