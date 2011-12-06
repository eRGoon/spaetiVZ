/**
 * Created by JetBrains RubyMine.
 * User: ronny
 * Date: 04.12.11
 * Time: 18:09
 * To change this template use File | Settings | File Templates.
 */
$(document).ready(function() {
  $("section#new").click(function(e) {
      var sender = $(e.target);
      var isme = sender.attr("id");

      if (isme != "new") {
          isme = sender.attr("class");
          if (isme != "outer") {
              return false;
          }
      }

      $(this).animate({"z-index": 20}, 0, 'linear', function() {
            $(this).empty();
            $(this).hide();
        });
  });
});