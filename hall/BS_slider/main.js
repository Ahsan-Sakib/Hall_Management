$(function() {
    $("ul.navbar-nav>li>a").dropdownHover().dropdown();
    
    $("[data-externlink=true]").on('click', function(){
        window.open(this.href);
    });

    $("[data-innerlink=true]").on('click', function(){
        location.href = this.href;
    });
    
    $('#myCarousel').carousel({
		interval:   4000
	});
    $('.carousel').on('slide.bs.carousel', function (e) {
        var nextPos = $(this).find('.carousel-inner .item').index($(e.relatedTarget));
        var nextIndicator = $(this).find('.carousel-indicators li')[nextPos];
        $(nextIndicator).addClass('active');
    });
    
    $('.course-type').on('shown.bs.tab', function() {
        var pDiv = '[href=' + $(this).attr('href') + '_semester_1]';
        var cDiv =  $(this).attr('href') + '_semester_1';
        $(pDiv).parent().removeClass('active');
        $(pDiv).tab('show');
    });
	
    if (location.hash.substr(1,8) == 'faculty_') {
        $(".facalty-panel")[0].scrollIntoView();
        var elm = $("a[href=" + location.hash + "]");
        elm.tab('show');
    }
    
    $(window).on('hashchange', function() {
        if (location.hash.substr(1,8) == 'faculty_') {
            $(".facalty-panel")[0].scrollIntoView();
            var elm = $("a[href=" + location.hash + "]");
            elm.tab('show');
        }
    });
    
    $('.front-tab-toggle a').click(function(e) {
        e.preventDefault();
        var index = $(this).attr('data-index');
        $(".front-tab-item").removeClass('active').eq(index).addClass('active');
        $(".front-tab-toggle").removeClass('active').eq(index).addClass('active');
    });
    
    // var ftb = function() {
    //     var curIndex = $(".front-tab-toggle.active a").attr('data-index');
    //     var newIndex;
    //     if (curIndex == 1) {
    //         newIndex = 0;
    //     } else {
    //         newIndex = 1;
    //     }
    //     $(".front-tab-item").removeClass('active').eq(newIndex).addClass('active');
    //     $(".front-tab-toggle").removeClass('active').eq(newIndex).addClass('active');
    // }
    // setInterval(ftb, 5000);
});

$('a.facultytabs').on('shown.bs.tab', function (e) {
    $(".animactive").removeClass('animactive');
    $($(e.target).attr('href')).addClass('animactive');
});

$('.main-logo img').dblclick(function(){
    $(this).toggleClass('animactive');
})