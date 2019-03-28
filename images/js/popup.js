$(document).ready(function(){
  function openModal(){
    if ($(window).width() < 768) {
      $('.popup').toggleClass('d-flex');
      $('.content').toggleClass('d-none');
    } else {
      $('.popup').toggleClass('d-flex');
      $('body').css('overflow', 'hidden');
    }
  }
  function closeModal(){
    if ($(window).width() < 768) {
      $('.popup').toggleClass('d-flex');
        $('.content').toggleClass('d-none');
  
      } else {
        $('.popup').toggleClass('d-flex');
        $('body').css('overflow', '');
      }
      $('.popup-form').removeClass('d-none');
      $('.popup-success').removeClass('d-flex');
  }

  $('.header-callback__btn').on('click', openModal);
  $('.popup__close').on('click', closeModal);

  $(document).on('click', function(e){
    if(!($(e.target).hasClass('popup-wrap')) 
    && !($(e.target).parents('.popup-wrap').length)
    && !($(e.target).hasClass('header-callback__btn')) ){
      closeModal();
    }
  });
});