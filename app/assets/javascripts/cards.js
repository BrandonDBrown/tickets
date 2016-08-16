$(function() {
  $( ".btn-success" ).on( "click", function(e) {
    // alert('jgh');
    e.preventDefault();
    $('.isotope').append('<div class="col-md-3" data-toggle="modal" data-target="#newTicket"><div class="thumbnail ticketinfo">#4903Change color of button</div></div>');
  });
});
