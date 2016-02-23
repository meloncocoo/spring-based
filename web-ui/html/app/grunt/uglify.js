module.exports = function () {
  "use strict";

  return {
    options: {
      beautify: false,
      banner: '<%= banner %>',
      mangle: false,
      compress: {
        sequences: true,
        dead_code: true,
        conditionals: true,
        booleans: true,
        unused: true,
        if_return: true,
        join_vars: true,
        drop_console: true
      }
    },
    js: {
      files: [{
        expand: true,
        cwd: '<%= config.destination.js %>',
        src: ['**/*.js', '!**/*.min.js'],
        dest: '<%= config.destination.js %>',
        ext: '.min.js'
      }]
    },
    site: {
      files: [{
        expand: true,
        cwd: '<%= config.destination.site %>/js',
        src: ['**/*.js', '!**/*.min.js'],
        dest: '<%= config.destination.site %>/js',
        ext: '.min.js'
      }]
    }
  };
};
