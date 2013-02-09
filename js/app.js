(function() {

  window.APP = {
    viewportSizeTest: function() {
      var $testEl, $viewport;
      $testEl = $("<div id=\"vw-test\">");
      $viewport = $(window);
      $testEl.appendTo("body").css({
        width: "100vw"
      });
      return $testEl.width() === $viewport.width();
    },
    enableRepaints: function() {
      var $repaint;
      $repaint = $("h1, code");
      return $(window).resize(function() {
        return $repaint.css("z-index", 1);
      });
    },
    initFitText: function() {
      return $(".vw").fitText(.53);
    },
    common: {
      init: function() {
        Modernizr.addTest('viewportSizing', APP.viewportSizeTest);
        if (Modernizr.viewportsizing) {
          return APP.enableRepaints();
        } else {
          return APP.initFitText();
        }
      }
    }
  };

  $(document).ready(UTIL.loadEvents);

}).call(this);
