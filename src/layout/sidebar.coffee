
React = require 'react'

div = React.createFactory 'div'

T = React.PropTypes

entries =
  intro: 'Introduction'
  navbar: 'Navbar'
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
    div className: 'layout-sidebar',
      Object.keys(entries).map (entry) =>
        onClick = =>
          @onPageSwitch entry
        div className: 'entry', key: entry, onClick: onClick,
          entries[entry]
