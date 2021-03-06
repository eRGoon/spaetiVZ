/**
 * Created by JetBrains RubyMine.
 * User: ronny
 * Date: 04.12.11
 * Time: 18:09
 * To change this template use File | Settings | File Templates.
 */
$(document).ready(function() {
    var winH = $(window).height();
    var contentH = winH - 100;

    $("div#content").height(contentH);
    $("section").height(contentH - 45);

    var rpN = $("a.rp.new");

    rpN.each(function() {
        var link = this;
        var rp = Raphael(link, 30, 30), ic;
        ic = rp.path("M25.979,12.896L19.312,12.896L19.312,6.229L12.647,6.229L12.647,12.896L5.979,12.896L5.979,19.562L12.647,19.562L12.647,26.229L19.312,26.229L19.312,19.562L25.979,19.562Z");
        ic.attr({fill: "#495BF5", stroke: "none"});
    });
});

$(window).resize(function() {
    var winH = $(window).height();
    var contentH = winH - 100;

    $("div#content").height(contentH);
    $("section").height(contentH - 45);
});