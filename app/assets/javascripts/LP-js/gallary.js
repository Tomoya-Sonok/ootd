$(function() {
  $(".gallary-item").hover(
    function() {
      $(this)
        .find(".js-accordion")
        .fadeIn();
    },
    function() {
      $(this)
        .find(".js-accordion")
        .fadeOut();
    }
  );
});