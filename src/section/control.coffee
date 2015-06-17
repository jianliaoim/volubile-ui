
React = require 'react'

Doc = React.createFactory require '../layout/doc'

div = React.createFactory 'div'
input = React.createFactory 'input'
textarea = React.createFactory 'textarea'

module.exports = React.createClass
  displayName: 'button'

  render: ->
    div null,
      div className: 'heading is-l1', '关于'
      Doc section: 'control', topic: 'overview'

      div className: 'heading is-l1', 'input'
      div className: 'demo-board',
        input placeholder: '默认'
        input value: '中文 English'
        input className: 'is-block', placeholder: '默认 Block'
        input disabled: true, value: '默认 disabled'
        input readonly: true, value: '默认 readonly'

      div className: 'heading is-l1', 'textarea'
      div className: 'demo-board',
        textarea placeholder: '默认'
        textarea value: '中文 English'
        textarea className: 'is-block', placeholder: '默认 Block'
        textarea disabled: true, value: '默认 disabled'
        textarea readonly: true, value: '默认 readonly'

      div className: 'heading is-l1', 'checkbox'
      div className: 'text', '缺'

      div className: 'heading is-l1', 'switcher'
      div className: 'text', '缺'

      div className: 'heading is-l1', 'radio button'
      div className: 'text', '缺'
