$(document).ready(function () {

  //TOGGLE MENU

  var md = 768;
  function openDropdown() {
    $('.header-navbar__dropdown').toggleClass('d-block');
    $('.header-navbar__item-arrow').toggleClass('rotate');
    if ($(window).outerWidth(true) >= md) {
      var wrapHeight = Math.ceil($('.header-navbar__dropdown-item').length / 2) * $('.header-navbar__dropdown-item').outerHeight();
      $('.header-navbar__dropdown-wrap').height(wrapHeight);
    }
  }

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

  //POPUP Fancybox
  $('.fancybox').fancybox({
      helpers: {
        overlay: {
          locked: false // отключаем блокировку overlay
        }
      }
    }
  );

});