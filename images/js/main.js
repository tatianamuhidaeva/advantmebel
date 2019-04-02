$(document).ready(function () {
  var md = 768;

  //вычисляем высоту футера  
  function footerHeight() {
    var wrapHeightFooter = Math.ceil($('.footer__item-catalog').length / 2) * $('.footer__item-catalog').outerHeight(true);
    $('.footer__list-catalog').height(wrapHeightFooter);
  }
  footerHeight();

  //При изменении ширины окна делаем пересчет высоты подвала,
  //на экранах больше md проверяем отсутствие display: none,
  // возвращаем блок раскрывающегося меню на место
  $(window).resize(function (event) {
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
    if ($(window).outerWidth(true) >= md) {
      if ($('.content>.header-navbar__dropdown').length != 0){
        $('.header-navbar__dropdown').after($(this));
      }
      $(this).siblings('.header-navbar__dropdown').toggleClass('d-flex');
      var wrapHeight = Math.ceil($('.header-navbar__dropdown-item').length / 2) * $('.header-navbar__dropdown-item').outerHeight();
      $('.header-navbar__dropdown-wrap').height(wrapHeight);
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
function sendFormAjax($form){
  $.ajax({
    type: $form.attr('method'),
    url: $form.attr('action'),
    data: $form.serialize()
  }).done(function(res) {
    console.log('success');
    // console.log(res);
    $form.find("input").val("");
    $('.popup-success').addClass('d-flex');
    $('.popup-form').addClass('d-none');
    $form.trigger("reset");
  }).fail(function() {
    console.log('fail');
  });

}
  function validateForm(){
    $("#popup__phone").mask("+7 (999) 999-9999");
    $('form .error').css('visibility', 'hidden');
        
    $('#form_callback_id').on('submit', function (event) {
      event.preventDefault();
      var $form = $(this);
      var flag = true;
      var name = $form.find("#popup__name").val(),
          phone = $form.find("#popup__phone").val();
      var nameTrim = name.replace(/\s/g,'');
      var errorNameL = $form.find('.error-name');
      var errorPhoneL = $form.find('.error-phone');
      // проверка телефона
      if (phone === ""){
        errorPhoneL.text('Пожалуйста, введите номер');
        errorPhoneL.css('visibility', 'visible');
        flag = false;
      } else if (phone.match(/\+7\s\([0-9]{3}\)\s[0-9]{3}\-[0-9]{4}/) === null){
        errorPhoneL.text('Введите номер в формате +7 (999) 999-9999');
        errorPhoneL.css('visibility', 'visible');
        flag = false;
      } else {
        errorPhoneL.css('visibility', 'hidden');
      }
      if (nameTrim === ""){
        errorNameL.text('Пожалуйста, введите имя');
        errorNameL.css('visibility', 'visible');
        flag = false;      
      } else if (nameTrim === null){
        errorNameL.text('Разрешены только буквы, цифры и пробелы');
        errorNameL.css('visibility', 'visible');
        flag = false;    
      } else if (nameTrim.length < 3){      
        errorNameL.text('В имени должно быть больше двух букв');
        errorNameL.css('visibility', 'visible');
        flag = false;    
      } else {
        errorNameL.css('visibility', 'hidden');
      }
      if (flag){
        sendFormAjax($form);
        errorNameL.css('visibility', 'hidden');
        errorPhoneL.css('visibility', 'hidden');
      }
      return false;
    });
  };
});