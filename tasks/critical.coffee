gulp     = require 'gulp'
config   = require('../config').critical
critical = require 'critical'

gulp.task "critical", (cb) ->
  critical.generate
    base: "app/"
    src: "*.html"
    dest: "styles/style.critical.css"
    width: 320
    height: 480
    minify: true
    , (err, output) ->
      critical.inline
        base: "app/"
        src: "index.html"
        dest: "index-critical.html"
        minify: true
