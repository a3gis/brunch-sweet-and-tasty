# Register modules
require('register')

# Create app module & load dependencies
App = angular.module('app', [
	'ngCookies'
	'ngResource'
	'app.controllers'
	'app.directives'
])

# Register router
App.config(require('router'))

# Bootstrap application when the DOM is ready
angular.element(document).ready -> angular.bootstrap(document, ['app'])
