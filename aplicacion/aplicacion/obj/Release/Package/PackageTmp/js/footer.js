$(function () {
    $(".flecha").css("display", "none");
    $(window).scroll(function () {
        if ($(window).scrollTop() > 500) {
            $(".flecha").fadeIn("slow");
        } else {
            $(".flecha").fadeOut("slow");
        }
    });
    $(".flecha").click(function () {
        var posicion = $("h1").offset();
        $("html").animate({
            scrollTop: posicion.top - 100
        }, "slow")
    })
})