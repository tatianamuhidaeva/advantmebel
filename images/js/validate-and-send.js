$(document).ready(function (){
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
    //проверка телефона
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
      $.ajax({
        type: $form.attr('method'),
        url: $form.attr('action'),
        data: $form.serialize()
      }).done(function() {
        console.log('success');
        $form.find("input").val("");
        $('.popup-success').addClass('d-flex');
        $('.popup-form').addClass('d-none');
        $form.trigger("reset");
      }).fail(function() {
        console.log('fail');
      });
      errorNameL.css('visibility', 'hidden');
      errorPhoneL.css('visibility', 'hidden');
    }
    return false;
  });
});