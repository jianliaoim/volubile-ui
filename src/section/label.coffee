
React = require 'react'

Doc = React.createFactory require '../layout/doc'

span = React.createFactory 'span'
div = React.createFactory 'div'
a = React.createFactory 'a'
button = React.createFactory 'button'

SectionUnread  = React.createFactory require '../section/unread'

module.exports = React.createClass
  displayName: 'label'

  render: ->
    div null,
      div className: 'heading is-l1', '标签'

      div className: 'line',
        span className: 'label label-default', 'Default'
        span className: 'label label-primary', 'Primary'
        span className: 'label label-success', 'Success'
        span className: 'label label-info', 'Info'
        span className: 'label label-warning', 'Warning'
        span className: 'label label-danger', 'Danger'
      div className: 'line',
        a className: 'label label-primary', href: '#', 'Link'

      div className: 'heading is-l2 is-regular', '演示'
      Doc section: 'label', topic: 'label'

      div className: 'demo-board',
        div className: 'heading is-l1 is-bold rich-line',
          'Example heading'
          span className: 'label label-info', 'New'
        div className: 'heading is-l2 is-bold rich-line',
          'Example heading'
          span className: 'label label-info', 'New'
        div className: 'heading is-l3 is-bold rich-line',
          'Example heading'
          span className: 'label label-info', 'New'

      SectionUnread()