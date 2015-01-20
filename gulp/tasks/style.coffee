gulp    = require 'gulp'
config  = require('../config').style
plumber = require 'gulp-plumber'
sass    = require 'gulp-ruby-sass'
browserSync = require 'browser-sync'

gulp.task 'style', ->
  gulp
    .src config.app
    .pipe plumber()
    .pipe sass(sourcemap: true)
    .pipe gulp.dest config.dist
    .pipe browserSync.reload(stream: true)
