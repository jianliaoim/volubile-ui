
React = require 'react'

Doc = React.createFactory require '../layout/doc'

div = React.createFactory 'div'

module.exports = React.createClass
  displayName: 'button'

  render: ->
    div null,
      div className: 'heading is-l1', '列表'
      Doc section: 'list', topic: 'overview'
      div className: 'demo-board',
        div className: 'nav-list',
          div className: 'nav-item', '内容'
          div className: 'nav-item', '内容'
          div className: 'nav-item', '内容'
          div className: 'nav-item', '内容'

