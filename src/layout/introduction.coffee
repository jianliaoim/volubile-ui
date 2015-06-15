
React = require 'react'

div = React.createFactory 'div'
span = React.createFactory 'span'

module.exports = React.createClass
  displayName: 'Introduction'

  render: ->

    div className: 'introduction',
      div className: 'pretty-line',
        span className: 'logo-volubile'
        span className: 'text-volubile', 'Volubile UI'
