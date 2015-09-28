
React = require 'react'

div = React.createFactory 'div'

T = React.PropTypes

module.exports = React.createClass
  displayName: 'Doc'

  propTypes:
    section: T.string.isRequired
    topic: T.string.isRequired

  render: ->
    content = require "../docs/#{@props.section}/#{@props.topic}.md"
    div className: 'layout-doc', dangerouslySetInnerHTML: __html: content
