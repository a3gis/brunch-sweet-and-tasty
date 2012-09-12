'use strict';

var HelloCtrl = require('src/controllers').HelloCtrl

describe('HelloCtrl', function(){
	var helloCtrl, scope;
	
	beforeEach(
		inject(function ($rootScope, $controller) {
	      scope = $rootScope.$new();
	      helloCtrl = $controller(HelloCtrl, { $scope: scope });
		}
	));


	it('should set "Hello world!" as initial title', function() {
		expect(scope.title).toBe('Hello world!')
	});

	it('should say hello', function() {
		scope.name = "John"
		scope.sayHello();
		expect(scope.title).toMatch(scope.name)
	});
});