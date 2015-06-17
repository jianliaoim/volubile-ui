
React = require 'react'

div = React.createFactory 'div'
span = React.createFactory 'span'

Doc = React.createFactory require '../layout/doc'

module.exports = React.createClass
  displayName: 'Divider'

  render: ->
    div null,
      div className: 'heading is-l1', '关于'

      div className: 'heading is-l1', '横向分割 inline-divider'
      Doc section: 'divider', topic: 'inline-divider'
      div className: 'demo-board',
        div className: 'pretty-line',
          span className: 'text', '文字'
          span className: 'text', '文字'
          div className: 'inline-divider'
          span className: 'text', '文字'
          span className: 'text', '文字'
        div className: 'pretty-line',
          div className: 'button is-primary', 'Button'
          div className: 'button is-primary', 'Button'
          div className: 'inline-divider'
          div className: 'button is-primary', 'Button'
          div className: 'button is-primary', 'Button'
        div className: 'pretty-line',
          div className: 'button is-primary', 'Button'
          span className: 'text', '文字'
          div className: 'inline-divider'
          div className: 'button is-primary', 'Button'
          span className: 'text', '文字'

      div className: 'heading is-l1', '竖直分割 block-divider'
      Doc section: 'divider', topic: 'block-divider'
      div className: 'demo-board',
        div className: 'nav-list',
          div className: 'nav-item', 'Line'
          div className: 'nav-item', 'Line'
          div className: 'block-divider'
          div className: 'nav-item', 'Line'
          div className: 'nav-item', 'Line'
