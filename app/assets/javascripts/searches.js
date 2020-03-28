// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(function() {
  let selected_list = $("#outfit-list");

  function appendOutfit(outfit) {
    let html = `<a href="/outfits/${outfit.id}" data-method="get">
                  <div class="col-md-4 cp_tooltiptext" id="a-outfit" data-tooltip="${outfit.name}">
                    <img src="${outfit.image}" id="outfit-image">
                  </div>
                </a>`
    selected_list.append(html);
  }

  function appendErrMsgToHTML(msg) {
    let html = `<div class='errMsg'>${ msg }</div>`
    selected_list.append(html);
  }

  // $(".search-input").on('change', function() {
  $(document).on('change', ".search-input", function() {
    let input = $(this).val();
    $.ajax({
      type: 'GET',
      url: '/outfits/search',
      data: { keyword: input },
      dataType: 'json'
    })
    .done(function(outfits) {
      $("#outfit-list").empty();
      if (outfits.length !== 0) {
        outfits.forEach(function(outfits){
          appendOutfit(outfits);
        });
      }
      else {
        appendErrMsgToHTML("気分に合うコーデがありません");
      }
      
    })
    .fail(function(){
      console.log('failure!');
    })
  });
});
