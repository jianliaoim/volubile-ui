
fs = require 'fs'
webpack = require 'webpack'

module.exports =
  entry:
    vendor: [
      'webpack-dev-server/client?http://0.0.0.0:8080'
      'webpack/hot/dev-server'
    ]
    main: './src/main'

  output:
    path: 'build/'
    filename: '[name].js'
    publicPath: 'http://localhost:8080/build/'

  resolve:
    extensions: ['.js', '.coffee', '']

  module:
    loaders: [
      { test: /\.cirru/, loader: 'cirru-script', ignore: /node_modules/ }
      { test: /\.coffee/, loader: 'coffee', ignore: /node_modules/ }
    ]

  plugins: [
    new webpack.optimize.CommonsChunkPlugin 'vendor', 'vendor.js'
  ]
