/**
 * Created by JetBrains RubyMine.
 * User: ronny
 * Date: 04.12.11
 * Time: 18:09
 * To change this template use File | Settings | File Templates.
 */
$(document).ready(function() {
    $("a.new").click(function() {
        if (!$("section#detail div.new").hasClass("active")) {
            $("section#detail div.active").animate({
                height: 'toggle'
            }, 300, function() {
                $("section#detail div.active").hide();
                $("section#detail div.new").show();
                $("section#detail div.new").animate({
                    height: $("section#detail div.new").height()
                }, 300, function() {
                    $("section#detail div.active").removeClass("active");
                    $("section#detail div.new").addClass("active");
                });
            });
        }
        return false;
    });
});