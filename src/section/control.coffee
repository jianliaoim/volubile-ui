
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
        input type: 'text', placeholder: '默认'
        input type: 'text', value: '中文 English', onChange: ->
        input type: 'text', className: 'is-block', placeholder: '默认 Block'
        input type: 'text', disabled: true, value: '默认 disabled'
        input type: 'text', readOnly: true, value: '默认 readonly'

      div className: 'heading is-l1', 'textarea'
      div className: 'demo-board',
        textarea placeholder: '默认'
        textarea value: '中文 English', onChange: ->
        textarea className: 'is-block', placeholder: '默认 Block'
        textarea disabled: true, value: '默认 disabled'
        textarea readOnly: true, value: '默认 readonly'

      div className: 'heading is-l1', 'checkbox'
      div className: 'text', '缺'

      div className: 'heading is-l1', 'switcher'
      div className: 'text', '缺'

      div className: 'heading is-l1', 'radio button'
      div className: 'text', '缺'
