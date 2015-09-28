fs = require 'fs'
exec = require('child_process').exec
gulp = require 'gulp'
sequence = require 'run-sequence'

port = fs.readFileSync '.port', 'utf8'

env =
  dev: true
  main: "//localhost:#{ port }/volubile-ui/main.js"
  style: "//localhost:#{ port }/volubile-ui/style.css"
  vendor: "//localhost:#{ port }/volubile-ui/vendor.js"

gulp.task 'del', (cb) ->
  del = require 'del'
  del [ './build/' ], cb

gulp.task 'html', ->
  swig = require 'gulp-swig'

  assets = undefined
  unless env.dev
    assets = require './build/assets.json'
    env.main = './build/' + assets.main[0]
    env.style = './build/' + assets.main[1]
    env.vendor = './build/' + assets.vendor

  gulp
  .src './index.template'
  .pipe swig data: env
  .pipe gulp.dest './'

gulp.task 'rsync', (cb) ->
  wrapper = require 'rsyncwrapper'
  wrapper.rsync
    ssh: true
    src: [ './index.html', './build', './images' ]
    recursive: true
    args: ['--verbose']
    dest: 'talk-ui:/teambition/server/talk-ui/volubile-ui'
    deleteAll: true
  , (error, stdout, stderr, cmd) ->
    if error?
      throw error
    console.error stderr
    console.log cmd
    cb()

gulp.task 'webpack', (cb) ->
  if env.dev
    command = 'webpack'
  else
    command = 'webpack --config webpack.min.coffee --progress'
  exec command, (err, stdout, stderr) ->
    console.log stdout
    console.log stderr
    cb err

gulp.task 'build', (cb) ->
  env.dev = false
  sequence 'del', 'webpack', 'html', cb
