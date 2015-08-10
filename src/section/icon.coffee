
React = require 'react'

Doc = React.createFactory require '../layout/doc'

div = React.createFactory 'div'
span = React.createFactory 'span'
svg = React.createFactory 'svg'
polygon = React.createFactory 'polygon'

module.exports = React.createClass
  displayName: 'Icon'

  render: ->
    div null,
      div className: 'heading is-l1', '关于'
      Doc section: 'icon', topic: 'overview'
      div className: 'demo-board',
        span className: 'icon icon-ring'

      div className: 'heading is-l1', '跳板(Spring board)'
      Doc section: 'icon', topic: 'spring-board'
      div className: 'demo-board',
        div className: 'spring-board',
          span className: 'board-icon icon icon-play'
          span className: 'board-text', 'A Demo'
