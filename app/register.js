angular.module('app.controllers', [])
	.controller('BaseCtrl', require('./controllers/base'))
	.controller('HelloCtrl', require('./controllers/hello'))

angular.module('app.directives', [])
	.directive('appVersion', require('./directives/app_version'))

angular.module('app.services', [])
	.factory('version', require('./services/version'))