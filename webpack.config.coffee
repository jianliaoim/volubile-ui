fs = require 'fs'
webpack = require 'webpack'
ExtractTextPlugin = require 'extract-text-webpack-plugin'

port = fs.readFileSync '.port', 'utf8'

fontName = 'fonts/[name].[ext]'
imageName = 'images/[name].[ext]'

module.exports =
  entry:
    vendor: [ "webpack-dev-server/client?http://0.0.0.0:#{ port }", 'webpack/hot/dev-server' ]
    main: [ './site/main', './site/main.less' ]
  output:
    path: 'build/'
    filename: '[name].js'
    publicPath: "http://localhost:#{ port }/volubile-ui/"
  resolve:
    extensions: [ '.coffee', '.js', '.jsx', '' ]
  module:
    loaders: [
      {test: /\.coffee/, loader: 'coffee'}
      {test: /\.js$/, exclude: /node_modules/, loader: 'babel'}
      {test: /\.jsx$/, exclude: /node_modules/, loader: 'babel'}
      {test: /\.css$/, loader: ExtractTextPlugin.extract 'style', 'css?importLoaders=1!autoprefixer?{browsers:[\'> 1%\']}'}
      {test: /\.less$/, loader: ExtractTextPlugin.extract 'style', 'css?importLoaders=1!autoprefixer?{browsers:[\'> 1%\']}!less'}
      {test: /\.md$/, loader: 'raw!remarkable'}
      {test: /\.(png|jpg)$/, loader: 'url', query: {limit: 2048, name: imageName}}
      {test: /\.woff((\?|\#)[\?\#\w\d_-]+)?$/, loader: 'url', query: {limit: 100, minetype: 'application/font-woff', name: fontName}}
      {test: /\.woff2((\?|\#)[\?\#\w\d_-]+)?$/, loader: 'url', query: {limit: 100, minetype: 'application/font-woff2', name: fontName}}
      {test: /\.ttf((\?|\#)[\?\#\w\d_-]+)?$/, loader: 'url', query: {limit: 100, minetype: 'application/octet-stream', name: fontName}}
      {test: /\.eot((\?|\#)[\?\#\w\d_-]+)?$/, loader: 'url', query: {limit: 100, name: fontName}}
      {test: /\.svg((\?|\#)[\?\#\w\d_-]+)?$/, loader: 'url', query: {limit: 10000, minetype: 'image/svg+xml', name: fontName}}
    ]
  plugins: [
    new webpack.optimize.CommonsChunkPlugin 'vendor', 'vendor.js'
    new ExtractTextPlugin 'style.css'
  ]
  remarkable:
    preset: 'full'
    linkify: true
    typographer: true
    breaks: true
