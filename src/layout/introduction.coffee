
React = require 'react'

Doc = React.createFactory require './doc'

div = React.createFactory 'div'
span = React.createFactory 'span'
a = React.createFactory 'a'

module.exports = React.createClass
  displayName: 'Introduction'

  render: ->

    div className: 'introduction',
      div className: 'rich-line',
        span className: 'logo-volubile'
        span className: 'text-volubile', 'Volubile UI'

      div className: 'heading is-l1', '这是什么?'
      Doc section: 'intro', topic: 'what'

      div className: 'heading is-l1', '组件'

      div className: 'line',
        a href: 'https://github.com/teambition/icon-fonts', 'icon-fonts'
        span null, '图标字体'
      div className: 'line',
        a href: 'https://github.com/teambition/react-lite-dropdown', 'react-lite-dropdown'
        span null, 'Dropdown 菜单'
      div className: 'line',
        a href: 'https://github.com/teambition/react-lite-layered', 'react-lite-layered'
        span null, 'Modal 等分层的组件'
      div className: 'line',
        a href: 'https://github.com/teambition/react-lite-audio', 'react-lite-audio'
        span null, '音频控件'
      div className: 'line',
        a href: 'https://github.com/teambition/react-lite-coder', 'react-lite-coder'
        span null, '代码编辑和渲染控件'
      div className: 'line',
        a href: 'https://github.com/teambition/react-lite-misc', 'react-lite-misc'
        span null, 'Switcher, Loading 等其他控件'
      div className: 'line',
        a href: 'https://github.com/teambition/react-lite-uploader', 'react-lite-uploader'
        span null, '上传组件(试验项目)'
