gulp    = require 'gulp'
config  = require('../config').html
browserSync = require 'browser-sync'

gulp.task 'html', ->
  gulp
    .src config.app
    .pipe browserSync.reload(stream: true)
