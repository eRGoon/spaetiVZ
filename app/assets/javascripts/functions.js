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

    var rpL = $("a.rp");

    rpL.each(function() {
        var link = this;
        var action = $(this).attr("class").split(" ")[1];
        var rp = Raphael(link, 30, 30), ic;

        if (action == "edit") {
            ic = rp.path("M25.31,2.872l-3.384-2.127c-0.854-0.536-1.979-0.278-2.517,0.576l-1.334,2.123l6.474,4.066l1.335-2.122C26.42,4.533,26.164,3.407,25.31,2.872zM6.555,21.786l6.474,4.066L23.581,9.054l-6.477-4.067L6.555,21.786zM5.566,26.952l-0.143,3.819l3.379-1.787l3.14-1.658l-6.246-3.925L5.566,26.952z");
            ic.attr({fill: "#4f85bb", stroke: "none"});
            ic.scale(.75);
        } else if (action == "del") {
            ic = rp.path("M24.778,21.419L19.276,15.917L24.777,10.415L21.949,7.585L16.447,13.087L10.945,7.585L8.117,10.415L13.618,15.917L8.116,21.419L10.946,24.248L16.447,18.746L21.948,24.248Z");
            ic.attr({fill: "#dd4b39", stroke: "none"});
        } else if (action == "new") {
            ic = rp.path("M25.979,12.896L19.312,12.896L19.312,6.229L12.647,6.229L12.647,12.896L5.979,12.896L5.979,19.562L12.647,19.562L12.647,26.229L19.312,26.229L19.312,19.562L25.979,19.562Z");
            ic.attr({fill: "#495BF5", stroke: "none"});
        } else return false;
    });
});