window.APP =

  viewportSizeTest: ->
    $testEl = $( "<div id=\"vw-test\">" )
    $viewport = $( window )
    $testEl.appendTo( "body" ).css
      width: "100vw"
    return $testEl.width() == $viewport.width()

  enableRepaints: ->
    $repaint = $( "h1, code" )
    $( window ).resize ->
      $repaint.css( "z-index", 1 )
      
  initFitText: ->
    $( ".vw" ).fitText( .53 )
        
  # Initializers
  common:
    init: ->
      # Thanks to Chris Coyier for doing some of the heavy lifting -> http://css-tricks.com/viewport-sized-typography/
      Modernizr.addTest 'viewportSizing', APP.viewportSizeTest
      
      if Modernizr.viewportsizing
        APP.enableRepaints()
      else
        APP.initFitText()
  

$( document ).ready UTIL.loadEvents