
React = require 'react'

Doc = React.createFactory require '../layout/doc'
Triangle = React.createFactory require '../components/triangle';
div = React.createFactory 'div'
span = React.createFactory 'span'

module.exports = React.createClass
  displayName: 'components'

  render: ->
    div null,
      div className: 'heading is-l1', '关于'
      Doc section: 'components', topic: 'overview'
      div className: 'heading is-l1', '三角形-向下'
      div className: 'demo-board',
        div {}, "Triangle onClick: -> alert 'clicked'"
      div className: 'demo-board',
        div {}, Triangle onClick: -> alert 'clicked'

      div className: 'heading is-l1', '三角形-向右'
      div className: 'demo-board',
        div {}, "Triangle type:'right', onClick: -> alert 'clicked'"
      div className: 'demo-board',
        div {}, Triangle type:'right', onClick: -> alert 'clicked'
