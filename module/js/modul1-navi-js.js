$(document).ready(function () {
    $('.m1-navi-icon-mobile-btn').click(function () {
        $('.m1-navi-menus').toggleClass('toggle-transition');
        $('.m1-navi-menus').toggle('slow');
    });

    $('header').css("opacity", "0");
    $('.layer-0').css("opacity", "0");
    $('.layer-1').css("opacity", "0");
    $('.layer-2').css("opacity", "0");
    
    loadding('header', 0);
    loadding('.layer-0', 500);
    loadding('.layer-1', 1000);
    loadding('.layer-2', 1500);

    function loadding(element, deplay) {
        $(element).each(function () {
            $(this).delay(deplay).animate({'opacity': '1'}, 1000);
        });
    }
});