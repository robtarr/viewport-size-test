window.APP =

  viewportSizeTest: ->
    $viewport = $( window )
    $testEl = $( "<div id=\"vw-test\">" )
    $testEl.appendTo( "body" ).css
      width: "100vw"
    support = $testEl.width() == $viewport.width()
    $testEl.remove()
    return support

  enableRepaints: ->
    $repaint = $( "h1, code" )
    $( window ).resize ->
      $repaint.css( "z-index", 1 )
      
  initFitText: ->
    $( ".vw" ).fitText( .53 )
    $( "<div class=\"using-fittext\">Using FitText</div>" ).appendTo( "body" )
        
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