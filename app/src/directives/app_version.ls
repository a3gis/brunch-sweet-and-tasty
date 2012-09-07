module = {}

module.appVersion = <[version]> +++ (version) ->
	(scope, elm, attrs) -> elm.text(version)

angular.module('app.directives').directive(module)