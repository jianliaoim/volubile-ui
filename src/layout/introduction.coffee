
React = require 'react'

div = React.createFactory 'div'

module.exports = React.createClass
  displayName: 'Introduction'

  render: ->

    div className: 'introduction',
      'introduction'