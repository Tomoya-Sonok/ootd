// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require activestorage
//= require bootstrap-sprockets

$(function(){
  $fileField = $('#file')
 
  $($fileField).on('change', $fileField, function(e) {
    file = e.target.files[0] || e.dataTransfer.files[0]
    reader = new FileReader(),
    $preview = $("#img_field");
    $preview_edit = $("#img_edit");
    reader.onload = (function(file) {
      return function(e) {
        $preview.empty();
        $preview_edit.empty();
        $preview.append($('<img>').attr({
          src: e.target.result,
          width: "100%",
          class: "preview",
          title: file.name
        }));
        $preview_edit.append($('<img>').attr({
          src: e.target.result,
          width: "100%",
          class: "preview",
          title: file.name
        }));
      };
    })(file);
    reader.readAsDataURL(file);
  });
});
$(function(){
  $('.modal-open').click(function(){
    $('body').append('<div class="modal-overlay"></div>');
    $('.modal-overlay').fadeIn('slow');
    const modal = '#modal';
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

