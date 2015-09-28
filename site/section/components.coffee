
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
        div {}, "Triangle"
      div className: 'demo-board',
        div {}, Triangle null
      div className: 'demo-board',
        div {},
          span {style:{float:'left', marginRight:6}}, '搜索'
          Triangle null


      div className: 'heading is-l1', '三角形-向右'
      div className: 'demo-board',
        div {}, "Triangle type:'right'"
      div className: 'demo-board',
        div {}, Triangle type:'right'
      div className: 'demo-board',
        div {},
          span {style:{float:'left', marginRight:6}}, '进入'
          Triangle {type:'right'}
