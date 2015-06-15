
React = require 'react'

div = React.createFactory 'div'
span = React.createFactory 'span'

module.exports = React.createClass
  displayName: 'button'

  render: ->
    div null,
      div className: 'heading', 'Spring board'
      div className: 'spring-board',
        span className: 'board-icon icon icon-play'
        span className: 'board-text', 'A Demo'
