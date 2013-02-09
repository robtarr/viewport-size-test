(function() {

  window.APP = {
    common: {
      init: function() {
        var causeRepaintsOn;
        causeRepaintsOn = $("h1, code");
        return $(window).resize(function() {
          return causeRepaintsOn.css("z-index", 1);
        });
      }
    }
  };

  $(document).ready(UTIL.loadEvents);

}).call(this);
