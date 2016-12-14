'use strict'

$ ->
  $('.post-content').fitVids()
  FastClick.attach Bloggy.app unless Bloggy.is 'device', 'desktop'

  moveScroller = ->
    $anchor = $('.blog-sidebar')
    $scroller = $('.blog-subscribe')

    move = ->
      st = $(window).scrollTop()
      ot = $anchor.offset().top

      if st > ot
        $scroller.css
          position: 'fixed'
          width: $anchor.width() - 32
          top: '20px'
      else
        if st <= ot
          $scroller.css
            position: 'relative'
            width: 'auto'
            top: ''
      return

    $(window).scroll move
    move()

  moveScroller()
