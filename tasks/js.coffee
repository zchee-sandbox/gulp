gulp    = require 'gulp'
config  = require('../config').js
plumber = require 'gulp-plumber'
uglify  = require 'gulp-uglify'
concat  = require 'gulp-concat'
browserSync = require 'browser-sync'

gulp.task 'js', ->
  gulp
    .src config.app
    .pipe plumber()
    .pipe uglify()
    # .pipe concat 'script.min.js'
    # .pipe gulp.dest config.dist
    .pipe browserSync.reload(stream: true)
