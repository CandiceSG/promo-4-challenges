$(function() {
  var bg = $('<div>').addClass("background");
  var modalDiv = $('<div>').addClass("image");

  $("img").on("click", function(e){
    $('body').append(bg);
    img = $("<img src='" +$(this).attr("src") + "'>)");
    img.appendTo(modalDiv);
    $('body').append(modalDiv);

    $(bg).on('click',function(e){
      $(bg).remove();
      $(modalDiv).remove();
    })
  });
});