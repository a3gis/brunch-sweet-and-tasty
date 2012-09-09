'use strict';

/* http://docs.angularjs.org/guide/dev_guide.e2e-testing */

describe('my app', function() {

  beforeEach(function() {
    browser().navigateTo('../../app/index.html');
  });


  it('should automatically redirect to /hello when location hash/fragment is empty', function() {
    expect(browser().location().path()).toBe("/hello");
  });


  describe('hello', function() {

    beforeEach(function() {
      browser().navigateTo('#/hello');
    });


    it('should render hello when user navigates to /hello', function() {
      expect(element('[ng-view] p:first').text()).toBe(true)
    });

  });


  describe('view2', function() {

    beforeEach(function() {
      browser().navigateTo('#/view2');
    });


    it('should render view2 when user navigates to /view2', function() {
      expect(element('[ng-view] p:first').text()).
        toMatch(/partial for view 2/);
    });

  });
});
