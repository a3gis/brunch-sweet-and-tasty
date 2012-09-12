# Create app module & load dependencies
app = angular.module 'app', ['ngCookies', 'ngResource']

# Register controllers, directives, etc
Object.keys require('./src/controllers'), (name, controller) -> app.controller(name, controller)
Object.keys require('./src/directives'), (name, directive) -> app.directive(name, directive)
Object.keys require('./src/filters'), (name, filter) -> app.filter(name, filter)
Object.keys require('./src/services'), (name, service) -> app.factory(name, service)

# Register router
app.config require('./router')

# Bootstrap application when the DOM is ready
angular.element(document).ready -> angular.bootstrap(document, ['app'])
