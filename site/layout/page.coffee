
React = require 'react'
Router = require 'react-router'

Sidebar = React.createFactory require './sidebar'

RouteHandler = React.createFactory Router.RouteHandler
div = React.createFactory 'div'

module.exports = React.createClass
  displayName: 'Page'

  render: ->

    div className: 'page',
      Sidebar()
      div className: 'content',
        RouteHandler()
