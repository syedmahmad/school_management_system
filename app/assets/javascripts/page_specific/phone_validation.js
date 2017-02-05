$(function() {
  $("#phone").intlTelInput({
    initialCountry: 'pk',
    formatOnInit: true,
    separateDialCode: true
  });

  $("#check_phone, #submit_check_phone").click(function(e) {
      e.preventDefault();
      if($("#phone").intlTelInput("isValidNumber")) {
        var dialCode = $("#phone").intlTelInput("getSelectedCountryData").dialCode
        $('#phone').val(dialCode + $('#phone').val());
        $(this).closest('form').submit();
      } else {
        $('.content-wrapper').prepend( "<p class='alert alert-danger'>Please enter valid phone.</p>" )
        $(".alert").slideDown(500, function(){setTimeout(function(){$(".alert").slideUp(500, function(){$(".js-flash-notification-div").remove()});},3000);});
      }
    });
});

// simple phone validation
// %input{name: 'user[mobile_number]', :type => "text", pattern: '((\+92)|(0))-{0,1}(3)\d{2}-(?!1234567)(?!1111111)(?!7654321)[0-9]{7}', required: true, oninvalid: "setCustomValidity('Please enter valid number with formate 0321-44xxxx6 or +92321-99xxx99')", onchange: "try{setCustomValidity('')}catch(e){}", placeholder: "0321-445xxx6"}/