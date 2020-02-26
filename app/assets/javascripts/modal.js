$(function(){
  $(document).on('click', '.modal-open', function(){
    $.ajax({
      url: '/api/outfits',
      type: 'get',
      dataType: 'json'
    })
    .done(function(outfit){
      console.log('非同期通信は成功！')
      $('#modal').empty();
      let html = buildHTML(outfit);
      $('#modal').append(html);
      function buildHTML(outfit){
        let html = 
          `<div class="modal-content__modal-image">
            <img src=
              ${outfit.image}
            >
          </div>
          <div class="modal-content__modal-outfit-name">
            ${outfit.name}
          </div>
          <p class="modal-content__modal-message">
            このコーデはいかがでしょうか！お似合いですよ♪
          </p>
          <a class="modal-close">
            <i class="far fa-window-close">閉じる</i>
          </a>`
        return html;
      };
    });
  });
  $('.modal-open').on('click', function(){
    $('body').append('<div class="modal-overlay"></div>');
    $('.modal-overlay').fadeIn('slow');
    const modal = $('#modal');
    modalResize();
    $(modal).fadeIn('slow');
    $('.modal-overlay').off().click(function(){
        $(modal).fadeOut('slow');
        
        $('.modal-overlay').fadeOut('slow',function(){
            $('.modal-overlay').remove();
        });
    });
    $('.modal-close').off().click(function(){
        $(modal).fadeOut('slow');
        $('.modal-overlay').fadeOut('slow',function(){
            $('.modal-overlay').remove();
        });
        return false;
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
    };
  });
});