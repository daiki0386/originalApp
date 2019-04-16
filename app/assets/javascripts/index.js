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

});
