'use strict';

var HelloCtrl = require('controllers/hello')

/* jasmine specs for controllers go here */

describe('HelloCtrl', function(){
  var helloCtrl, $scope;

  beforeEach(function(){
	$scope = {}
   helloCtrl = new HelloCtrl($scope);
  });


  it('should display "Hello world!" as initial title', function() {
    expect($scope.title).toBe('Hello world!')
  });

  it('should say hello', function() {
    $scope.name = "John"
	 $scope.sayHello();
	 expect($scope.title).toBe('Hello, John!')
  });
});