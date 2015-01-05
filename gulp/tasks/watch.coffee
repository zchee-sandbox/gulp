gulp   = require 'gulp'
config = require('../config').watch
watch  = require 'gulp-watch'

gulp.task 'watch', ->
  watch "#{config.gulp}", ->
    gulp.start ['auto-reload']
  watch "#{config.bower}", ->
    gulp.start ['bower']
  watch "#{config.js}", ->
    gulp.start ['js', 'reload']
  watch "#{config.style}", ->
    gulp.start ['style', 'reload']
  watch "#{config.html}", ->
    gulp.start ['reload']
