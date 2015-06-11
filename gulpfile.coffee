
gulp = require 'gulp'
sequence = require 'run-sequence'
exec = require('child_process').exec
env =
  dev: true
  main: 'http://localhost:8080/build/main.js'
  vendor: 'http://localhost:8080/build/vendor.js'

gulp.task 'rsync', (cb) ->
  wrapper = require 'rsyncwrapper'
  wrapper.rsync
    ssh: true
    src: ['index.html', 'build']
    recursive: true
    args: ['--verbose']
    dest: 'talk-ui:/teambition/srever/talk-ui/volubile-ui'
    deleteAll: true
  , (error, stdout, stderr, cmd) ->
    if error?
      throw error
    console.error stderr
    console.log cmd
    cb()

gulp.task 'script', ->
  script = require 'gulp-cirru-script'

  gulp
  .src 'src/*.cirru'
  .pipe script
  .pipe gulp.dest('lib/')

gulp.task 'html', (cb) ->
  require 'cirru-script/lib/register'
  html = require './template'
  fs = require 'fs'
  if (not env.dev)
    assets = require './build/assets.json'
    env.main = "./build/#{assets.main}"
    env.vendor = "./build/#{assets.vendor}"
  fs.writeFile 'index.html', (html env), cb

gulp.task 'del', (cb) ->
  del = require 'del'
  del ['build'], cb

gulp.task 'webpack', (cb) ->
  command = if env.dev then 'webpack' else 'webpack --config webpack.min.cirru --progress'
  exec command, (err, stdout, stderr) ->
    console.log stdout
    console.log stderr
    cb err

gulp.task 'build', (cb) ->
  env.dev = false
  sequence 'del', 'webpack', 'html', cb
