
React = require 'react'

div = React.createFactory 'div'
input = React.createFactory 'input'
span = React.createFactory 'span'

module.exports = React.createClass
  displayName: 'Form'

  render: ->
    div null,
      div className: 'heading is-l1', '控件组合'
      div className: 'demo-board',
        div className: 'heading is-l2 is-regular', '设置消息'
        div className: 'text is-minor', '关于设置消息的具体内容. This that and so on.'
        div className: 'rich-line',
          input type: 'text', placeholder: '默认', onChange: ->
          span null, '文字'
        div className: 'text is-minor', '关于设置消息的具体内容. This that and so on.'
        div className: 'rich-line',
          input type: 'text', placeholder: '默认', onChange: ->
          span null, '文字'

        div className: 'heading is-l2 is-regular', '设置提醒'
        div className: 'text is-minor', '关于设置消息的具体内容. This that and so on.'
        div className: 'rich-line',
          input type: 'checkbox', placeholder: '默认', onChange: ->
          span className: 'text', '一些文字'
        div className: 'text is-minor', '关于设置消息的具体内容. This that and so on.'
        div className: 'text is-minor', '关于设置消息的具体内容. This that and so on.'
        div className: 'rich-line',
          input type: 'checkbox', placeholder: '默认', onChange: ->
          span className: 'text', '一些文字'
        div className: 'rich-line',
          div className: 'button is-primary', '按钮'
          span className: 'text', '一些文字'
