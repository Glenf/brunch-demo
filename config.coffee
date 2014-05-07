exports.config =
	# See http://brunch.readthedocs.org/en/latest/config.html for documentation.
	files:
		javascripts:
			joinTo:
				'js/app.js': /^app/
				'js/vendor.js': /^bower_components/
				'test/javascripts/test.js': /^test(\/|\\)(?!vendor)/
				'test/javascripts/test-vendor.js': /^test(\/|\\)(?=vendor)/
			order:
				before: []

		stylesheets:
			joinTo:
				'styles/app.css': /^(app|bower_components)/
				'test/stylesheets/test.css': /^test/
			order:
				before: []
				after: []

		templates:
			joinTo: 
				'js/templates.js' : /.+\.jade$/

	plugins :
		jade :
			options :
				pretty : yes
		sass :
			mode : "ruby"
		autoReload :
			delay : 200 if require('os').platform() is 'win32'

