
React = require 'react'

Doc = React.createFactory require '../layout/doc'

div = React.createFactory 'div'
span = React.createFactory 'span'

module.exports = React.createClass
  displayName: 'button'

  render: ->
    outlineStyle =
      width: 400
      border: '1px solid #eee'

    div null,
      div className: 'heading is-l1', '关于'
      Doc section: 'navbar', topic: 'overview'

      div className: 'heading is-l2', '导航条'
      Doc section: 'navbar', topic: 'navbar'

      div className: 'demo-board',
        div className: 'navbar', style: outlineStyle,
          div className: 'nav-left', 'Left'
          div className: 'nav-right', 'Right'

      div className: 'demo-board',
        div className: 'navbar', style: outlineStyle,
          div className: 'nav-left spring-board',
            span className: 'board-icon icon icon-audio'
            span className: 'board-text', 'Audio'
          div className: 'nav-right rich-line',
            span className: 'icon icon-audio'
            span className: 'icon icon-video'

