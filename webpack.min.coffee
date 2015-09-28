fs = require 'fs'
webpack = require 'webpack'
ExtractTextPlugin = require 'extract-text-webpack-plugin'

config = require './webpack.config'

module.exports =
  entry:
    vendor: []
    main: config.entry.main
  output:
    path: 'build/'
    filename: '[name].[chunkhash:8].js'
    publicPath: './build/'
  resolve: config.resolve
  module: config.module
  plugins: [
    new webpack.optimize.CommonsChunkPlugin 'vendor', 'vendor.[chunkhash:8].js'
    new webpack.optimize.UglifyJsPlugin sourceMap: false
    new ExtractTextPlugin 'style.[chunkhash:8].css'
    ->
      @plugin 'done', (stats) ->
        content = JSON.stringify stats.toJson().assetsByChunkName, null, 2
        fs.writeFileSync 'build/assets.json', content
  ]
  remarkable: config.remarkable
