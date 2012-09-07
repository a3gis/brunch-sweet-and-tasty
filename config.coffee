exports.config =
  paths:
    public: 'public'

  modules:
    definition: false
    wrapper: (path, data) ->
      """
(function() {
  'use strict';
  #{data}
}).call(this);\n\n
      """

  files:
    javascripts:
      joinTo:
        'javascripts/app.js': /^app/
        'javascripts/vendor.js': /^vendor/

      order:
        before: [
          'vendor/scripts/console-helper.js',
          'vendor/scripts/jquery-1.7.2.js',
          'vendor/scripts/underscore-1.3.1.js',
          'vendor/scripts/backbone-0.9.2.js',
          'vendor/scripts/backbone-mediator.js',

          'vendor/scripts/angular/angular.js',
          'vendor/scripts/angular/angular-resource.js',
          'vendor/scripts/angular/angular-cookies.js',

          'vendor/scripts/bootstrap/bootstrap-transition.js',
          'vendor/scripts/bootstrap/bootstrap-alert.js',
          'vendor/scripts/bootstrap/bootstrap-button.js',
          'vendor/scripts/bootstrap/bootstrap-carousel.js',
          'vendor/scripts/bootstrap/bootstrap-collapse.js',
          'vendor/scripts/bootstrap/bootstrap-dropdown.js',
          'vendor/scripts/bootstrap/bootstrap-modal.js',
          'vendor/scripts/bootstrap/bootstrap-tooltip.js',
          'vendor/scripts/bootstrap/bootstrap-popover.js',
          'vendor/scripts/bootstrap/bootstrap-scrollspy.js',
          'vendor/scripts/bootstrap/bootstrap-tab.js',
          'vendor/scripts/bootstrap/bootstrap-typeahed.js'
        ]

    stylesheets:
      defaultExtension: 'less'
      joinTo: 'stylesheets/app.css'
      order:
       before: ['vendor/styles/bootstrap/bootstrap.less']

    templates:
      defaultExtension: 'hbs'
      joinTo: 'javascripts/app.js'
