gulp   = require 'gulp'
config = require('../config').watch
watch  = require 'gulp-watch'

gulp.task 'watch', ->
  watch "#{config.gulp}", ->
    gulp.start ['auto-reload']
  # watch "#{config.bower}", ->
  #   gulp.start ['bower']
  watch "#{config.js}", ->
    gulp.start ['js']
  watch "#{config.style}", ->
    gulp.start ['style']
  watch "#{config.html}", ->
    gulp.start ['html']
  watch "#{config.polymer}", ->
    gulp.start ['html']
