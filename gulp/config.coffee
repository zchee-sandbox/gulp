config = {
  app  : 'app',
  dist : 'dist'
}

module.exports = {

  config: 'config',

  js: {
    app:  "#{config.app}/scripts/*.js",
    dist: "#{config.app}/scripts"
  },

  style: {
    app: "#{config.app}/styles/*.scss"
    dist: "#{config.app}/styles"
  },

  critical: {
    base: "#{config.app}/"
    src: "#{config.app}/index.html"
    dest: {
      css : "#{config.app}/styles/style.critical.css"
      html: "#{config.app}/index-critical.html"
    }
  },

  html: {
    app: "#{config.app}/*.html"
    dist: "#{config.app}/"
  }

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
