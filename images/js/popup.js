$(document).ready(function () {
  var md = 768;
  function openModal() {
    if ($(window).outerWidth(true) < md) {
      $('.popup').toggleClass('d-flex');
      $('.content').toggleClass('d-none');
    } else {
      $('.popup').toggleClass('d-flex');
      $('body').css('overflow', 'hidden');
    }
  }

  function closeModal() {
    if ($(window).outerWidth(true) < md) {
      $('.popup').toggleClass('d-flex');
      $('.content').toggleClass('d-none');

    } else {
      $('.popup').removeClass('d-flex');
      $('body').css('overflow', '');
    }
    $('.popup-form').removeClass('d-none');
    $('.popup-success').removeClass('d-flex');
  }

  $('.header-callback__btn').on('click', openModal);
  $('.popup__close').on('click', closeModal);

  $(document).on('click', function (e) {
    if ($(window).outerWidth(true) >= md) {
      if (($(e.target).hasClass('popup')) &&
        !($(e.target).parents('.popup-wrap').length)) {
        closeModal();
      }
    }
  });
});