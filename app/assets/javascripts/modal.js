$(function(){
  
  function modalResize(){
      // var w = $(window).width();
      // var h = $(window).height();
      // var x = (w - $(modal).outerWidth(true)) / 2;
      // var y = (h - $(modal).outerHeight(true)) / 2;
      var y = 10;
      var x = 10;
  
      $(modal).css({'left': x + '%','top': y + '%', 'right': '10%'});
  };
  $(document).on('click', '.modal-open', function(){
    let input = $(".search-input").val();
    $.ajax({
      url: '/api/outfits',
      type: 'get',
      data: { keyword: input },
      dataType: 'json'
    })
    .done(function(outfit){
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
            このコーデはいかがでしょうか！<br>お似合いですよ♪
          </p>
          <span class="modal-close">
            <i class="far fa-window-close">閉じる</i>
          </span>`
        return html;
      };
    });
  });
  $(document).on('click', '.modal-open', function(){
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
    $(document).on('click', '.modal-close', function(){
      $(modal).fadeOut('slow');
      $('.modal-overlay').fadeOut('slow',function(){
          $('.modal-overlay').remove();
      });
    });
  });
});