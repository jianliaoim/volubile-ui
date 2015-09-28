
React = require 'react'

Doc = React.createFactory require '../layout/doc'

div = React.createFactory 'div'
span = React.createFactory 'span'
button = React.createFactory 'button'

module.exports = React.createClass
  displayName: 'button'

  render: ->
    div null,
      div className: 'heading is-l1', '未读提示'
      Doc section: 'label', topic: 'icon-unread'

      button className: 'button is-default rich-line',
        'Messages'
        span className: 'icon-unread', 1





