
React = require 'react'

div = React.createFactory 'div'

module.exports = React.createClass
  displayName: 'not-found'

  render: ->
    div null,
      'Page not found'
