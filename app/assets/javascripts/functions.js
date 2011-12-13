/**
 * Created by JetBrains RubyMine.
 * User: ronny
 * Date: 04.12.11
 * Time: 18:09
 * To change this template use File | Settings | File Templates.
 */
$(document).ready(function() {
    $("a.new").click(function() {
        $("section#detail div.new").show();
        $("section#detail div.new").slideDown('fast');
        return false;
    });
  $("section#new").click(function(e) {
      var sender = $(e.target);
      var isme = sender.attr("id");

      if (isme != "new") {
          isme = sender.attr("class");
          if (isme != "outer") {
              return false;
          }
      }

      $(this).animate({"z-index": -1}, 0, 'linear', function() {
            $(this).empty();
            $(this).hide();
        });
  });
});