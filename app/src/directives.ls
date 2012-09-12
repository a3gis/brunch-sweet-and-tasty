# Directives go here and are loaded into app/initialize

AppVersion = (settings) ->
	(scop, elem, attrs) ->
		elem.text(settings.version)

module.exports.appVersion = AppVersion