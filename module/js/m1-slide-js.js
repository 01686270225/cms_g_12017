$(document).ready(function () {
    $(window).bind("scroll", function () {
        paralax(".m1-banner-img");

        var scrollTop = $(window).scrollTop();
        if (scrollTop >= 300) {
            $('.m1-navi-boder').addClass('m1-navi-scrollTop');
        } else {
            $('.m1-navi-boder').removeClass('m1-navi-scrollTop');
        }
    });
    
    var basicScroll = 0;
    $(window).scroll(function(){
        var scrollTop = $(window).scrollTop();
        if(scrollTop > basicScroll){
            $('.m1-navi-boder').slideUp('1000');
        }else{
            $('.m1-navi-boder').slideDown('1000');
        }
        basicScroll = scrollTop;
    });



    function paralax(element) {
        var scrollTop = $(window).scrollTop();
        $(element).css("transform", "translateY(" + (0.5 * scrollTop) + "px)");
    }
});