$(document).ready(function () {
  var md = 768;
  function openDropdown() {
    $('.header-navbar__dropdown').toggleClass('d-block');
    $('.header-navbar__item-arrow').toggleClass('rotate');
    if ($(window).outerWidth(true) >= md) {
      var wrapHeight = Math.ceil($('.header-navbar__dropdown-item').length / 2) * $('.header-navbar__dropdown-item').outerHeight();
      $('.header-navbar__dropdown-wrap').height(wrapHeight);
    }
  }

  // function closeCatalog() {
  //   if ($(window).outerWidth(true) < md) {
  //     $('.popup').toggleClass('d-flex');
  //     $('.content').toggleClass('d-none');

  //   } else {
  //     $('.popup').removeClass('d-flex');
  //     $('body').css('overflow', '');
  //   }
  //   $('.popup-form').removeClass('d-none');
  //   $('.popup-success').removeClass('d-flex');
  // }
  $('.header__toggle-btn').on('click', function () {
    $('.header-navbar__dropdown').toggleClass('d-block');
    $('.content').toggleClass('d-none');
    $('.header-navbar__dropdown-wrap').height('auto');
  });

  $('.header__toggle-catalog').on('click', function () {
    $('.header-navbar__dropdown').toggleClass('d-block');
    $('.header-navbar__item-arrow').toggleClass('rotate');
    if ($(window).outerWidth(true) >= md) {
      var wrapHeight = Math.ceil($('.header-navbar__dropdown-item').length / 2) * $('.header-navbar__dropdown-item').outerHeight();
      $('.header-navbar__dropdown-wrap').height(wrapHeight);
    } else {
      $('.header-navbar__dropdown-wrap').height('auto');
    }
  });

  $(document).on('click', function (e) {
    if ($(window).outerWidth(true) >= md) {
      if (!(($(e.target).parents('.header__toggle-catalog').length) || $(e.target).hasClass('header__toggle-catalog')) &&
        !($(e.target).parents('.header-navbar__dropdown').length)) {
        $('.header-navbar__dropdown').removeClass('d-block');
        $('.header-navbar__item-arrow').removeClass('rotate');
      }
    }
  });

});