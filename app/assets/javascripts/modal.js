$(function(){
  $('.modal-open').on('click', function(){
    $.ajax({
      url: '/api/outfits',
      type: 'get',
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(outfit){
      $(".modal-content").empty();
      console.log(outfit);
      let insertHTML = '';
      function buildModal(outfit){
        insertHTML += modalContent(outfit)
      }

      function modalContent(outfit){
        if (outfit){
          html = 
          `<div class="modal-content__modal-image">
            <div class="modal-content__modal-image">
              <img src=
                ${outfit.image}
              >
            </div>
            <div>
              ${outfit.name}
            </div>
            <p class="modal-content__modal-message">
              このコーデはいかがでしょうか！お似合いですよ♪
            </p>
          </div>`
        };
        return html;
      };
      buildModal(outfit);
      $('.modal-content').append(insertHTML);
    })
    .fail(function(){
      console.log('Fail');
    })

    $('body').append('<div class="modal-overlay"></div>');
    $('.modal-overlay').fadeIn('slow');
    const modal = $('#modal');
    modalResize();
    $(modal).fadeIn('slow');
    $('.modal-overlay, .modal-close').off().click(function(){
        $(modal).fadeOut('slow');
        $('.modal-overlay').fadeOut('slow',function(){
            $('.modal-overlay').remove();
        });
    });

    $(window).on('resize', function(){
        modalResize();
    });

    function modalResize(){
        var w = $(window).width();
        var h = $(window).height();
        var x = (w - $(modal).outerWidth(true)) / 2;
        var y = (h - $(modal).outerHeight(true)) / 2;

        $(modal).css({'left': x + 'px','top': y + 'px'});
    }
  });
});