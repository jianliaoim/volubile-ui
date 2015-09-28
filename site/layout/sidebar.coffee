
React = require 'react'
classnames = require 'classnames'
Router = require 'react-router'

div = React.createFactory 'div'

T = React.PropTypes

entries =
  '': '介绍'
  navbar: '导航条'
  banner: 'Banner'
  fonts: '文字'
  button: '按钮'
  colors: '颜色'
  icon: '图标'
  label: '标签'
  divider: '分割线'
  list: '列表'
  form: '表单'
  control: '控件'
  message: '消息'
  dialog: '弹窗'
  components: 'SVG图标'

module.exports = React.createClass
  displayName: 'Sidebar'
  mixins: [Router.Navigation, Router.State]

  onPageSwitch: (page) ->
    @transitionTo "/#{page}"

  render: ->
    div className: 'layout-sidebar nav-list',
      div className: 'nav-title', '导航'
      Object.keys(entries).map (entry) =>
        onClick = => @onPageSwitch entry
        className = classnames 'entry', 'nav-item', 'rich-line',
          'is-selected': @getPath() is "/#{entry}"
        div className: className, key: entry, onClick: onClick,
          entries[entry]
