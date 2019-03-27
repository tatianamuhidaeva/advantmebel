$(document).ready(function(){

  
  $('.header__toggle-btn').on('click', function(){
    $('.header-navbar__dropdown').toggleClass('d-block');
  });
  $('.header__toggle-catalog').on('click', function(){
    $('.header-navbar__dropdown').toggleClass('d-block');
    $('.header-navbar__item-arrow').toggleClass('rotate');
    var wrapHeight = Math.ceil($('.header-navbar__dropdown-item').length / 2) * $('.header-navbar__dropdown-item').outerHeight();
    $('.header-navbar__dropdown-wrap').height(wrapHeight);
  }); 
});