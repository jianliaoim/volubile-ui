
React = require 'react'
Router = require 'react-router'
require './style/main.less'

introduction    = require './layout/introduction'
notFound        = require './layout/not-found'
sectionButton   = require './section/button'
sectionColors   = require './section/colors'
sectionControl  = require './section/control'
sectionDialog   = require './section/dialog'
sectionDivider  = require './section/divider'
sectionForm     = require './section/form'
sectionFonts    = require './section/fonts'
sectionIcon     = require './section/icon'
sectionList     = require './section/list'
sectionMessage  = require './section/message'
sectionNavbar   = require './section/navbar'
sectionLabel    = require './section/label'
sectionBanner    = require './section/banner'

page = require './layout/page'

Route = React.createFactory Router.Route
DefaultRoute = React.createFactory Router.DefaultRoute
NotFoundRoute = React.createFactory Router.NotFoundRoute

routes =
  Route handler: page,
    DefaultRoute    handler: introduction
    Route path: 'button',   handler: sectionButton
    Route path: 'colors',   handler: sectionColors
    Route path: 'control',  handler: sectionControl
    Route path: 'dialog',   handler: sectionDialog
    Route path: 'divider',  handler: sectionDivider
    Route path: 'form',     handler: sectionForm
    Route path: 'fonts',    handler: sectionFonts
    Route path: 'icon',     handler: sectionIcon
    Route path: 'list',     handler: sectionList
    Route path: 'message',  handler: sectionMessage
    Route path: 'navbar',   handler: sectionNavbar
    Route path: 'label',    handler: sectionLabel
    Route path: 'banner',    handler: sectionBanner
    NotFoundRoute handler: notFound

Router.run routes, Router.HashLocation, (Root) ->
  React.render (React.createElement Root), document.body
