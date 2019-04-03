$(document).ready(function () {
  var md = 768;

  //вычисляем высоту футера  
  function footerHeight() {
    var mass = [];
    var wrapHeightFooter = 0;
    $( ".footer__item-catalog" ).each(function() {
      mass.push($( this ).outerHeight(true));
    });
    wrapHeightFooter = Math.ceil($('.footer__item-catalog').length / 2)*Math.max.apply(null, mass);
    $('.footer__list-catalog').height(wrapHeightFooter);
  }
  footerHeight();

  //При изменении ширины окна делаем пересчет высоты подвала,
  //на экранах больше md проверяем отсутствие display: none,
  // возвращаем блок раскрывающегося меню на место
  $(window).resize(function () {
    footerHeight();
    if ($(window).outerWidth(true) >= md) {
      $('.content>div').removeClass('d-none');
      $('.header-navbar__list').append($('.header-navbar__dropdown'));
      $('.header-navbar__dropdown').removeClass('d-flex');
      $('.header-navbar__item-arrow').removeClass('rotate');
    } else {
      if ($('.popup').length != 0) {
        $('.content>div').not('.popup').addClass('d-none');
        $('body').css('overflow', '');
      }
    }
  });

  //TOGGLE BTN по нажатию на бургер открывается каталог, 
  //а остальные элементы страницы закрываются 
  //(на экранах меньше md)
  $('.header__toggle-btn').on('click', function () {
    if ($('.popup').length != 0){
      $('.popup').remove();
    } else {
      $('.content>div').not('.header-navbar__dropdown').toggleClass('d-none');
    }
    $('.content').append($('.header-navbar__dropdown'));
    $('.header-navbar__dropdown').toggleClass('d-flex');
    $('.header-navbar__dropdown-wrap').height('auto');
    // showBlock('.header-navbar__dropdown');
  });

  //Dropdown Menu. Раскрывающееся меню 
  //(на экранах больше md)
  $('.header__toggle-dropdown').on('click', function (e) {
    e.preventDefault();
    var matchClass = this.classList[2];
    var dropdown = $('.header-navbar__dropdown'+ "." + matchClass);
    if ($(window).outerWidth(true) >= md) {
      if ($('.content>.header-navbar__dropdown').length != 0){
        dropdown.after($(this));
      }
      dropdown.toggleClass('d-flex');
      var wrapHeight = Math.ceil(dropdown.find('.header-navbar__dropdown-item').length / 2) * dropdown.find('.header-navbar__dropdown-item').outerHeight();
      dropdown.find('.header-navbar__dropdown-wrap').height(wrapHeight);
      $(this).children('.header-navbar__item-arrow').toggleClass('rotate');
    } else {
      $('.header-navbar__dropdown-wrap').height('auto');
    }
  });

  //закрытие dropdown по нажатию мимо этого блока
  $(document).on('click', function (e) {
    if ($(window).outerWidth(true) >= md) {
      if (!(($(e.target).parents('.header__toggle-dropdown').length) || $(e.target).hasClass('header__toggle-dropdown')) &&
        !($(e.target).parents('.header-navbar__dropdown').length)) {
        $('.header-navbar__dropdown').removeClass('d-flex');
        $('.header-navbar__item-arrow').removeClass('rotate');
      }
    }
  });

 
  //POPUP
  function popupControl() {
    function closeModal() {
      if ($(window).outerWidth(true) < md) {
        $('.content>div').removeClass('d-none');
      } else {
        $('body').css('overflow', '');
      }
      $('.popup').remove();
    }
    
    $('.popup__close').on('click', closeModal);
    
    $(document).on('click', function (e) {
      if ($(window).outerWidth(true) >= md) {
        if (($(e.target).hasClass('popup')) &&
        !($(e.target).parents('.popup-wrap').length)) {
          closeModal();
        }
      } 
    });

    validateForm();
  }

  $('.btn__callback').on('click', function (event) {
    event.preventDefault();
    if ($('.content>.popup').length == 0) {
      $.ajax({
        type: 'GET',
        url: $(this).attr('href')
      }).done(function (res) {
        if ($(window).outerWidth(true) < md) {
          if($('.header-navbar__dropdown').hasClass('d-flex').length != 0){
            $('.header-navbar__dropdown').removeClass('d-flex');
          }
          $('.content>div').not('.header-navbar__dropdown').addClass('d-none');
        } else {
          $('body').css('overflow', 'hidden');
        }
        $('.content').append(res);
        popupControl();
      }).fail(function () {
        console.log('fail');
      });
    }
  });

  function validateForm(){
    $("#popup__phone").mask("?+7 (999) 999-9999",{placeholder:"_"});	
    $('form .error').css('visibility', 'hidden');
  };
});