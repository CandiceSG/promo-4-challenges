$(function() {
  $("#message").hide().delay(500).slideDown('slow');

  $( "#message" ).on('click', function(e){
    $(this).slideUp( "slow")
  });

  $("#message-wrapper").on('mouseenter', function(e){
    $("#message").slideDown('slow')
  });

});

/*
  *
  * TODO: add your code here!
  *
*/
