module.exports = (grunt) ->
	# Load grunt plugins
	grunt.loadNpmTasks 'grunt-contrib-watch'
	grunt.loadNpmTasks 'grunt-exec'
	grunt.loadNpmTasks 'grunt-haxe'
	
	# Configure
	grunt.initConfig
		
		# Execute eli tests
		exec:
			test:
				cmd: 'haxelib run munit test -neko -result-exit-code'

		# Build application
		haxe:
			build:
				hxml: 'build.hxml'

		# Test & build on tests
		watch:
			test:
				files: ['src/**/*.hx', 'test/**/*.hx']
				tasks: ['exec:test', 'haxe:build']

	# Register commands
	grunt.registerTask 'test',    ['exec']
	grunt.registerTask 'build',   ['haxe:build']
	grunt.registerTask 'default', ['watch']