$(function() {

  $("img").on("click", function(e){
    // We define 2 html divs for modal and background
    var bg = $('<div>').addClass("background");
    var modal = $('<div>').addClass("modal");
    modal.css("width", $(this).data("modal-width") + "px")


    // We append bg to body
    $('body').append(bg);

    // We build img, fix its width & insert it into our modal
    img = $("<img src='" + $(this).attr("src") + "'>)");
    img.appendTo(modal);
    var modalWrapper = $('<div>').addClass("modal-wrapper");
    modal.appendTo(modalWrapper)

    // Finally we append our nice modal to the body
    $('body').append(modalWrapper);

      modalWrapper.on("click", function(e){
      modalWrapper.remove();
      modal.remove();
      bg.remove();
    });
  });
});