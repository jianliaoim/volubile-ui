
React = require 'react'

div = React.createFactory 'div'

module.exports = React.createClass
  displayName: 'fonts'

  render: ->
    div null,
      div className: 'heading is-l1', 'Heading level 1'
      div className: 'heading is-l2', 'Heading level 2'
      div className: 'text is-muted', 'Muted text'
      div className: 'text is-bold', 'Bold text'
