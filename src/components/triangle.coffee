
React = require 'react'

div = React.createFactory 'div'
svg = React.createFactory 'svg'
polygon = React.createFactory 'polygon'

module.exports = React.createClass
  displayName: 'triangle'

  propTypes:
    onClick: React.PropTypes.func
    type: React.PropTypes.string

  render: ->
    div className:'triangle', onClick: this.props.onClick,
      switch this.props.type
        when 'right'
          svg width:'8', height:'8', viewBox:'0 0 8 8', fill: 'grey',
            polygon points: '0 0 4 4 0 8'
        else
          svg width:'8', height:'8', viewBox:'0 0 8 8', fill: 'grey',
            polygon points: '0,0 8,0 4,4'