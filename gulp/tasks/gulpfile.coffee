gulp   = require 'gulp'
config = require('../config').watch
spawn  = require("child_process").spawn

gulp.task "auto-reload", ->
  spawn "gulp", [],
    stdio: "inherit"

  process.exit()
