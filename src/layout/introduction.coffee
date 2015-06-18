
React = require 'react'

Doc = React.createFactory require './doc'

div = React.createFactory 'div'
span = React.createFactory 'span'

module.exports = React.createClass
  displayName: 'Introduction'

  render: ->

    div className: 'introduction',
      div className: 'rich-line',
        span className: 'logo-volubile'
        span className: 'text-volubile', 'Volubile UI'

      div className: 'heading is-l1', '这是什么?'
      Doc section: 'intro', topic: 'what'
