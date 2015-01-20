gulp        = require 'gulp'
browserSync = require 'browser-sync'
config      = require('../config').watch

gulp.task 'server', ->
  browserSync
    server:
      baseDir: config.root
    open: false
    notify: false

gulp.task 'reload', ->
  browserSync.reload stream: true
