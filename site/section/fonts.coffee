
React = require 'react'

Doc = React.createFactory require '../layout/doc'

div = React.createFactory 'div'

module.exports = React.createClass
  displayName: 'fonts'

  render: ->
    div null,
      div className: 'heading is-l1', '关于'
      Doc section: 'fonts', topic: 'overview'

      div className: 'heading is-l1', '标题'
      Doc section: 'fonts', topic: 'heading'
      div className: 'heading is-l2 is-regular', '演示'
      div className: 'demo-board',
        div className: 'heading is-l1 is-bold', 'Heading level 1'
        div className: 'heading is-l2 is-bold', 'Heading level 2'
        div className: 'heading is-l3 is-bold', 'Heading level 3'
        div className: 'heading is-l1', 'Heading level 1'
        div className: 'heading is-l2', 'Heading level 2'
        div className: 'heading is-l3', 'Heading level 3'
        div className: 'text is-minor', 'Muted text'
        div className: 'text is-bold', 'Bold text'

      div className: 'heading is-l1', '文本'
      Doc section: 'fonts', topic: 'text'
      div className: 'heading is-l2 is-regular', '演示'
      div className: 'demo-board',
        div className: 'text', '普通文本'
        div className: 'text is-bold', '加粗文本'
        div className: 'text is-minor', '补充文本'
