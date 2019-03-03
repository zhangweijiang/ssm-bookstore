$(function () {
    var $navbar = $('#masthead-navbar');
    var scroll = $(window).scrollTop();
    if (scroll > 0) {
        $navbar.addClass('masthead-navbar-theme');
    } else if (scroll == 0) {
        $navbar.removeClass('masthead-navbar-theme');
    }
    $(window).scroll(function () {
        scroll = $(window).scrollTop();
        if (scroll > 0) {
            $navbar.addClass('masthead-navbar-theme');
        } else if (scroll == 0) {
            $navbar.removeClass('masthead-navbar-theme');
        }
    });
});
