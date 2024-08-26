function get_today_sales() {
  $.ajax({
    url: '/home/today_sales',
    type: 'GET',
    dataType: 'script' // This ensures that the server response will be executed as JavaScript
  });
}

function get_room_status() {
  $.ajax({
    url: '/home/room_status',
    type: 'GET',
    dataType: 'script' // This ensures that the server response will be executed as JavaScript
  });
}

$(document).on('click', '#modal-submit', function () {
  debugger;
  $('.submit-form').trigger('click');
});

function apply_datepicker(dom, format = 'DD/MMM/YYYY') {
  dom.datetimepicker({
    format: format
  });
}

$(document).on('turbolinks:load', function(){
  get_today_sales();
  get_room_status();

  $(document).on('focus', '.datepicker', function () {
    apply_datepicker($(this));
  });

  $(document).on('focus', '.timepicker', function () {
    $(this).datetimepicker({
      format: 'LT'
    });
  });

});

