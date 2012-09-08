function AppVersion(version) {
	return function(scop, elem, attrs) {
		elem.text(version)
	}
}

AppVersion.$inject = ['version']

module.exports = AppVersion;