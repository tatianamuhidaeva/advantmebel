ymaps.ready(function () {
  var myMap = new ymaps.Map('map', {
          center: [55.762385137808465,37.558059795861716],
          zoom: 16
      }, {
          searchControlProvider: 'yandex#search'
      }),

      // // Создаём макет содержимого.
      // MyIconContentLayout = ymaps.templateLayoutFactory.createClass(
      //     '<div style="color: #FFFFFF; font-weight: bold;">$[properties.iconContent]</div>'
      // ),

      myPlacemark = new ymaps.Placemark(myMap.getCenter(), {
          hintContent: 'Собственный значок метки',
          balloonContent: 'Адвант мебель'
      }, {
          // Опции.
          // Необходимо указать данный тип макета.
          iconLayout: 'default#image',
          // Своё изображение иконки метки.
          iconImageHref: '/images/img/geomark.png',
          // Размеры метки.
          iconImageSize: [35, 49],
          // Смещение левого верхнего угла иконки относительно
          // её "ножки" (точки привязки).
          iconImageOffset: [-5, -38]
      });

  myMap.geoObjects
      .add(myPlacemark);
});