$(document).ready(function(){

  $('.header-callback__btn').on('click', function(){
    if ($(window).width() < 768) {
      $('.popup').toggleClass('d-flex');
      $('.content').toggleClass('d-none');
    } else {
      $('.popup').toggleClass('d-flex');
      $('body').css('overflow', 'hidden');
    }
  });
  $('.popup__close').on('click', function(){
    if ($(window).width() < 768) {
    $('.popup').toggleClass('d-flex');
      $('.content').toggleClass('d-none');

    } else {
      $('.popup').toggleClass('d-flex');
      $('body').css('overflow', '');
    }
    $('.popup-form').removeClass('d-none');
    $('.popup-success').removeClass('d-flex');
  });
});