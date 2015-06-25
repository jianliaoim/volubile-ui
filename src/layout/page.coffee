
React = require 'react'

Sidebar = React.createFactory require './sidebar'
Introduction = React.createFactory require './introduction'

SectionButton  = React.createFactory require '../section/button'
SectionColors  = React.createFactory require '../section/colors'
SectionControl = React.createFactory require '../section/control'
SectionDialog  = React.createFactory require '../section/dialog'
SectionDivider = React.createFactory require '../section/divider'
SectionForm    = React.createFactory require '../section/form'
SectionFonts   = React.createFactory require '../section/fonts'
SectionIcon    = React.createFactory require '../section/icon'
SectionList    = React.createFactory require '../section/list'
SectionMessage = React.createFactory require '../section/message'
SectionNavbar  = React.createFactory require '../section/navbar'
SectionLabel = React.createFactory require '../section/label'

div = React.createFactory 'div'

module.exports = React.createClass
  displayName: 'Page'

  getInitialState: ->
    page: 'label'

  onPageSwitch: (page) ->
    @setState page: page

  render: ->

    div className: 'page',
      Sidebar page: this.state.page, onPageSwitch: @onPageSwitch
      div className: 'content',
        switch this.state.page
          when 'intro'    then Introduction()
          when 'button'   then SectionButton()
          when 'colors'   then SectionColors()
          when 'control'  then SectionControl()
          when 'dialog'   then SectionDialog()
          when 'divider'  then SectionDivider()
          when 'form'     then SectionForm()
          when 'fonts'    then SectionFonts()
          when 'icon'     then SectionIcon()
          when 'list'     then SectionList()
          when 'message'  then SectionMessage()
          when 'navbar'   then SectionNavbar()
          when 'label'    then SectionLabel()
          else '404'
