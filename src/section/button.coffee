
React = require 'react'

div = React.createFactory 'div'

module.exports = React.createClass
  displayName: 'button'

  render: ->
    div null,
      div className: 'heading is-l2', 'Buttons'
      div className: 'line',
        div className: 'button is-default', 'Default Button'
        div className: 'button is-primary', 'Primary Button'
        div className: 'button is-danger', 'Danger Button'

      div className: 'heading is-l2', 'Small Buttons'
      div className: 'line',
        div className: 'button is-default is-small', 'Default Button'
        div className: 'button is-primary is-small', 'Primary Button'
        div className: 'button is-danger is-small', 'Danger Button'

      div className: 'heading is-l2', 'Disabled Buttons'
      div className: 'line',
        div className: 'button is-disabled', 'Disabled Button'

      div className: 'heading is-l2', 'Link Buttons'
      div className: 'line',
        div className: 'button is-link', 'Link Button'
