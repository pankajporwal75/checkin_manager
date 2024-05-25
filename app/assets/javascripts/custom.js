function get_today_sales() {
  $.ajax({
    url: '/home/today_sales',
    type: 'GET',
    dataType: 'script' // This ensures that the server response will be executed as JavaScript
  });
}

$(document).on('click', '#modal-submit', function () {
  debugger;
  $('.submit-form').trigger('click');
});

$(document).on('turbolinks:load', function(){
  get_today_sales();
});

