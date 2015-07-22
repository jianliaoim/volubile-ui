
React = require 'react'

div = React.createFactory 'div'
span = React.createFactory 'span'
input = React.createFactory 'input'

fontColors =
  'font-level-1': 'rgba(56, 56, 56, 1)'
  'font-level-2': 'rgba(128, 128, 128, 1)'
  "font-level-3": 'rgba(166, 166, 166, 1)'
  'font-reverse-1': 'rgba(255, 255, 255, 1)'
  'font-reverse-2': 'rgba(255, 255, 255, 0.8)'

bgColors =
  'gray-bg-level-1': 'rgba(247, 247, 247, 1)'
  'gray-bg-level-2': 'rgba(238, 238, 238, 0.2)'

shadowColors =
  'shadow-level-1': 'rgba(0, 0, 0, 0.3)'

borderColors =
  'border-level-1': 'rgba(217, 217, 217, 1)'

themeColors =
  blueberry: 'hsl(231, 44%, 56%)'
  grape: 'hsl(291, 50%, 39%)'
  ink: 'hsl(0, 0%, 26%)'
  mint: 'hsl(174, 100%, 29%)'
  ocean: 'hsl(210, 79%, 46%)'
  tea: 'hsl(146, 46%, 41%)'

hintColors =
  'hint-unread': 'hsl(14, 100%, 63%)'

ColorBlock = React.createFactory React.createClass
  displayName: 'color-block'

  render: ->
    {name, value} = @props
    style =
      backgroundColor: value
    fontStyle =
      color: value
    div className: 'color-block rich-line',
      div className: 'color-preview', style: style, '示例 example'
      div className: 'color-font', style: fontStyle, '示例 example'
      input type: 'text', className: 'color-name', value: name, readOnly: true
      input type: 'text', className: 'color-value', value: value, readOnly: true

module.exports = React.createClass
  displayName: 'button'

  render: ->
    div null,
      div className: 'heading is-l1', '文字颜色'
      Object.keys(fontColors).map (name) =>
        value = fontColors[name]
        ColorBlock name: name, value: value, key: name

      div className: 'heading is-l1', '背景颜色'
      Object.keys(bgColors).map (name) =>
        value = bgColors[name]
        ColorBlock name: name, value: value, key: name

      div className: 'heading is-l1', '阴影颜色'
      Object.keys(shadowColors).map (name) =>
        value = shadowColors[name]
        ColorBlock name: name, value: value, key: name

      div className: 'heading is-l1', '边框颜色'
      Object.keys(borderColors).map (name) =>
        value = borderColors[name]
        ColorBlock name: name, value: value, key: name

      div className: 'heading is-l1', '主题颜色'
      Object.keys(themeColors).map (name) =>
        value = themeColors[name]
        ColorBlock name: name, value: value, key: name

      div className: 'heading is-l1', '提示颜色'
      Object.keys(hintColors).map (name) =>
        value = hintColors[name]
        ColorBlock name: name, value: value, key: name
