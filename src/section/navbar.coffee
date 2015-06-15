
React = require 'react'

div = React.createFactory 'div'

module.exports = React.createClass
  displayName: 'button'

  render: ->
    div null,
      div className: 'heading is-l2',
        'Basic Layout'
      div className: 'navbar',
        div className: 'nav-left',
          'At Left'
        div className: 'nav-right',
          'At Right'
