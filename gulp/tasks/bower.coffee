gulp           = require 'gulp'
config         = require('../config').bower
mainBowerFiles = require 'main-bower-files'
plumber        = require 'gulp-plumber'

gulp.task 'bower', ->
  gulp
    .src mainBowerFiles()
    .pipe plumber()
    .pipe gulp.dest config.app
