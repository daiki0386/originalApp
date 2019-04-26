$(document).on('turbolinks:load', function(){

$('.menu-icon').click(function(){
  $('.menu-list').slideToggle();
  });

$('.view-more').hover(function(){
  $('.view-more').css('background-color', '#fff');
    },
    function() {
  $('.view-more').css('background-color', '#EEEEEE');
    });

$('.view-more').click(function(){
  $('.sub-description').slideDown();
  });

$(window).scroll(function (){
    $('.scroll').each(function(){
        var elemPos = $(this).offset().top,
            scroll = $(window).scrollTop(),
            windowHeight = $(window).height();
          if (scroll > elemPos - windowHeight + 250){
              $(this).addClass('scrollin');
            }
        });
    });

});
