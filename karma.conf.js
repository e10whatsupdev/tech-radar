// Karma configuration
// Generated on Wed May 20 2015 15:45:04 GMT-0300 (BRT)

module.exports = function(config) {
  config.set({
    basePath: '.',
    frameworks: ['jasmine'],
    files: [
      'node_modules/chance/dist/chance.min.js',
      'node_modules/d3/build/d3.min.js',
      'src/namespaces.js',
      'src/util/**/*.js',
      'src/models/**/*.js',
      'src/graphing/**/*.js',
      'test/**/*.js'
    ],
    exclude: [ ],
    reporters: ['progress'],
    port: 9876,
    colors: true,
    logLevel: config.LOG_INFO,
    autoWatch: false,
    browsers: ['PhantomJS'],
    captureTimeout: 60000,
    singleRun: false
  });
};
