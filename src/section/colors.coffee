
React = require 'react'

div = React.createFactory 'div'
span = React.createFactory 'span'
input = React.createFactory 'input'

fontColors =
  'text-main': '#383838'
  'text-minor': '#808080'

hintColors =
  'hint-unread': 'hsl(14, 100%, 63%)'

lineColors =
  'line-minor': '#eeeeee'

ColorClock = React.createFactory React.createClass

  render: ->
    {name, value} = @props
    style =
      backgroundColor: value
    fontStyle =
      color: value
    div className: 'color-block rich-line',
      div className: 'color-preview', style: style, '白色 white'
      div className: 'color-font', style: fontStyle, '文字 font'
      input type: 'text', className: 'color-name', value: name, readOnly: true
      input type: 'text', className: 'color-value', value: value, readOnly: true


module.exports = React.createClass
  displayName: 'button'

  render: ->
    div null,
      div className: 'heading is-l1', '文字颜色'
      Object.keys(fontColors).map (name) =>
        value = fontColors[name]
        ColorClock name: name, value: value, key: name

      div className: 'heading is-l1', '提示颜色'
      Object.keys(hintColors).map (name) =>
        value = hintColors[name]
        ColorClock name: name, value: value, key: name

      div className: 'heading is-l1', '线条颜色'
      Object.keys(lineColors).map (name) =>
        value = lineColors[name]
        ColorClock name: name, value: value, key: name
