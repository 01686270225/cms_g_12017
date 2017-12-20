$(document).ready(function () {
    var k = 0;
    $('.m2').css("opacity","0");
    
    paralax(".m2-grip-background");
    var top = $(window).scrollTop();
    loadding(".m2");
    
    $(window).bind("scroll", function () {
        paralax(".m2-grip-background");

        top = $(window).scrollTop();
        
        loadding(".m2");

    });

    function loadding(element) {
        $(element).each(function () {
            var position = $(this).offset().top - $(this).height();
            if (top >= position && k == 0) {

                $(this).animate({'opacity': '1'}, 2000);
                k = 1;
            }
        });
    }

    function paralax(element) {
        var scrollTop = $(window).scrollTop();
        $(element).css("transform", "translateY(" + (-480 + (0.2 * scrollTop)) + "px)");
    }
});