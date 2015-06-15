
fs = require 'fs'
webpack = require 'webpack'

fontName = 'fonts/[name].[ext]'

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
      { test: /\.coffee/, loader: 'coffee', ignore: /node_modules/ }
      { test: /\.less/, loader: 'style!css!less' }
      {test: /\.woff((\?|\#)[\?\#\w\d_-]+)?$/, loader: "url", query: {limit: 100, minetype: 'application/font-woff', name: fontName}}
      {test: /\.ttf((\?|\#)[\?\#\w\d_-]+)?$/, loader: "url", query: {limit: 100, minetype: "application/octet-stream", name: fontName}}
      {test: /\.eot((\?|\#)[\?\#\w\d_-]+)?$/, loader: "url", query: {limit: 100, name: fontName}}
      {test: /\.svg((\?|\#)[\?\#\w\d_-]+)?$/, loader: "url", query: {limit: 10000, minetype: "image/svg+xml", name: fontName}}
      {test: /\.png$/, loader: 'url', query: {limit: 1000, minetype: 'image/png'}}
    ]

  plugins: [
    new webpack.optimize.CommonsChunkPlugin 'vendor', 'vendor.js'
  ]
