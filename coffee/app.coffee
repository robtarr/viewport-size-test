# When you change APP, be sure to update it in mylibs/util.js
window.APP =

  # Initializers
  common:
    init: ->
      causeRepaintsOn = $( "h1, code" )

      $( window ).resize ->
        causeRepaintsOn.css( "z-index", 1 )
      

$( document ).ready UTIL.loadEvents