
React = require 'react'
classnames = require 'classnames'

div = React.createFactory 'div'

T = React.PropTypes

entries =
  intro: 'Introduction'
  navbar: 'Navbar'
  fonts: 'Fonts'
  button: 'Buttons'
  colors: 'Colors'
  icon: 'Icons'
  divider: 'Divider'
  list: 'List'
  fields: 'Fields'
  control: 'Control'
  message: 'Message'
  dialog: 'Dialog'

module.exports = React.createClass
  displayName: 'Sidebar'

  propTypes:
    page: T.string.isRequired
    onPageSwitch: T.func.isRequired

  onPageSwitch: (page) ->
    @props.onPageSwitch page

  render: ->
    div className: 'layout-sidebar nav-list',
      Object.keys(entries).map (entry) =>
        onClick = => @onPageSwitch entry
        className = classnames 'entry', 'nav-item',
          'is-selected': @props.page is entry
        div className: className, key: entry, onClick: onClick,
          entries[entry]
