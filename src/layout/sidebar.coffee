
React = require 'react'
classnames = require 'classnames'

div = React.createFactory 'div'

T = React.PropTypes

entries =
  intro: '介绍'
  navbar: '导航条'
  fonts: '文字'
  button: '按钮'
  colors: '颜色'
  icon: '图标'
  divider: '分割线'
  list: '列表'
  fields: '表单'
  control: '控件'
  message: '消息'
  dialog: '弹窗'

module.exports = React.createClass
  displayName: 'Sidebar'

  propTypes:
    page: T.string.isRequired
    onPageSwitch: T.func.isRequired

  onPageSwitch: (page) ->
    @props.onPageSwitch page

  render: ->
    div className: 'layout-sidebar nav-list',
      div className: 'nav-title', '导航'
      Object.keys(entries).map (entry) =>
        onClick = => @onPageSwitch entry
        className = classnames 'entry', 'nav-item', 'pretty-line',
          'is-selected': @props.page is entry
        div className: className, key: entry, onClick: onClick,
          entries[entry]
