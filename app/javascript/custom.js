function get_today_sales() {
  $.ajax({
    url: '/home/today_sales',
    type: 'GET',
    dataType: 'script' // This ensures that the server response will be executed as JavaScript
  });
}

// Call the function to test it
$(document).on('turbo:load', function(){
  get_today_sales();
});

$('#modal-submit').on('click', function () {
  $('.submit-form').trigger('click.rails');
});

