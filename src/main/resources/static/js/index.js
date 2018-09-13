function navigationButtons() {
    var $closeNavLine1 = $('.closeNavLine1'),
        $closeNavLine2 = $('.closeNavLine2'),
        $closeNav = $('.closeNav'),
        $showNav = $('.showNav'),
        $bodyStyle = $('body'),
        $slider = $('.index_hidden_navigation');
    $showNav.click(function () {
        var timeOutOne = setTimeout(function () {
            $closeNavLine1.addClass('closeNavLine1Transform');
            $closeNavLine2.addClass('closeNavLine2Transform');
            $closeNavLine1.removeClass('closeNavLine1TransformReverse');
            $closeNavLine2.removeClass('closeNavLine2TransformReverse');
        }, 800);
        $showNav.fadeOut('slow');
        $closeNav.fadeIn('slow');
        $bodyStyle.css('overflow', 'hidden');
        $slider.slideDown(800);
        timeOutOne();
        clearTimeout(timeOutOne);
    });
    $closeNav.click(function () {
        var timeOutTwo = setTimeout(function () {
            $closeNav.fadeOut('slow');
            $showNav.fadeIn('slow');
        }, 800);
        $closeNavLine1.removeClass('closeNavLine1Transform');
        $closeNavLine2.removeClass('closeNavLine2Transform');
        $closeNavLine1.addClass('closeNavLine1TransformReverse');
        $closeNavLine2.addClass('closeNavLine2TransformReverse');
        $bodyStyle.css('overflow', 'auto');
        $slider.slideUp(800);
        timeOutTwo();
        clearTimeout(timeOutTwo);
    });
}

$(document).ready(function () {
    navigationButtons();
});