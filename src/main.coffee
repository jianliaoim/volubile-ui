
React = require 'react'
require './style/main.less'

Page = React.createFactory require './layout/page'

React.render Page(), document.body
