// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(function() {
  $(".search-input").on('change', function() {
    let input = $(this).val();
    console.log(input);
    $.ajax({
      type: 'GET',
      url: '/outfits/search',
      data: { keyword: input },
      dataType: 'json'
    })
    .done(function(outfits) {
      console.log('success!');
      console.log(outfits);
    })
    .fail(function(){
      console.log('failure!');
    })
  });
});