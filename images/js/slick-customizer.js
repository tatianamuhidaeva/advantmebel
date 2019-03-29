$(document).ready(function(){
  $('.presents__slider').slick({
    dots: false,
    infinite: true,
    speed: 300,
    slidesToShow: 4,
    slidesToScroll: 1,
    prevArrow: '<div class="slick-arrow slick-arrow-prev presents__arrow presents__arrow-prev"></div>',
    nextArrow: '<div class="slick-arrow slick-arrow-next presents__arrow presents__arrow-next"></div>',
    responsive: [
      {
        breakpoint: 768,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 1
        }
      },
      {
        breakpoint: 550,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1
        }
      }
    ]
  });
		
  $('.products-sliders-main').slick({
    dots: false,
    infinite: true,
    slidesToShow: 1,
    slidesToScroll: 1,
    arrows: false,
    asNavFor: '.products-sliders-nav',
    responsive: [
      {
        breakpoint: 768,
        settings: {
          arrows: true,
          prevArrow: '<div class="slick-arrow slick-arrow-prev products__arrow products__arrow-prev"></div>',
          nextArrow: '<div class="slick-arrow slick-arrow-next products__arrow products__arrow-next"></div>'
        }
      }
    ]
  });
  $('.products-sliders-nav').slick({
    dots: false,
    infinite: true,
    speed: 300,
    slidesToShow: 5,
    slidesToScroll: 1,
    prevArrow: '<div class="slick-arrow slick-arrow-prev products__arrow products__arrow-prev"></div>',
    nextArrow: '<div class="slick-arrow slick-arrow-next products__arrow products__arrow-next"></div>',
    asNavFor: '.products-sliders-main',
    focusOnSelect: true,
    centerMode: true,
    centerPadding: '0px'
  });
  
});
