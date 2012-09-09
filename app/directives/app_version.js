function AppVersion() {
	return function(scop, elem, attrs) {
		elem.text("0.1")
	}
}

module.exports = AppVersion;