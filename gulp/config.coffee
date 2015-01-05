config = {
  app  : 'app',
  dist : 'dist'
}

module.exports = {

  config: 'config',

  js: {
    app:  "#{config.app}/scripts/*.js",
    dist: "#{config.dist}/scripts"
  },

  style: {
    app: "#{config.app}/styles/*.scss"
    dist: "#{config.dist}/styles"
  },

  bower: {
    app: "#{config.app}/vendor"
  }

  watch: {
    gulp  : 'gulp/**/*.coffee'
    bower : "bower_components/**/*"
    root  : "#{config.app}"
    js    : "#{config.app}/scripts/*.js"
    style : "#{config.app}/styles/*.scss"
    html  : "#{config.app}/*.html"
  }
}
