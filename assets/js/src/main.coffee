'use strict'

$ ->
  $('.post-content').fitVids()
  FastClick.attach Bloggy.app unless Bloggy.is 'device', 'desktop'
