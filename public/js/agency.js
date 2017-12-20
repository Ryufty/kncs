// Agency Theme JavaScript

(function($) {
    "use strict"; // Start of use strict
    
    
    // jQuery for page scrolling feature - requires jQuery Easing plugin
    $('a.page-scroll').bind('click', function(event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: ($($anchor.attr('href')).offset().top - 50)
        }, 1250, 'easeInOutExpo');
        event.preventDefault();
    });
    
    // Highlight the top nav as scrolling occurs
    $('body').scrollspy({
        target: '.navbar-fixed-top',
        offset: 51
    });
    
    // Closes the Responsive Menu on Menu Item Click
    $('.navbar-collapse ul li a').click(function(){ 
        $('.navbar-toggle:visible').click();
    });
    
    // Offset for Main Navigation
    $('#mainNav').affix({
        offset: {
            top: 100
        }
    });
    
    // bugfix: not to lost modal focus until the last modal is closed in multi-modal environment.
    var modalstack = [];
    $('.modal')
    .on('shown.bs.modal', function() {
        modalstack.push(this);
    })
    .on('hidden.bs.modal', function() {
        modalstack.pop();   //remove itself.
        if (modalstack.length > 0) {
            $('body').addClass('modal-open');
        }
    });


})(jQuery); // End of use strict
