
React = require 'react'

div = React.createFactory 'div'

module.exports = React.createClass
  displayName: 'button'

  render: ->
    div null, 'button'
