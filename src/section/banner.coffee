
React = require 'react'

Doc = React.createFactory require '../layout/doc'

span = React.createFactory 'span'
div = React.createFactory 'div'

module.exports = React.createClass
  displayName: 'banner'

  render: ->
    div null,
      div className: 'heading is-l1', 'Banner'
      Doc section: 'banner', topic: 'banner'

      div className: 'demo-board',
        div className: 'banner rich-line',
          span className: 'is-leading icon icon-sharp'
          span className: 'name', '公告板'
        div className: 'banner rich-line',
          span className: 'is-leading icon icon-sharp'
          span className: 'name', 'icon跟随的情况'
          span className: 'icon-unread', 1
        div className: 'banner rich-line',
          span className: 'is-leading icon icon-sharp'
          span className: 'name full', 'icon在最右端的情况'
          span className: 'icon-unread', 1
