$(function(){
  $('select').on('change', function(e) {
    e.preventDefault();
    let tag = $(this).val();
    console.log(tag);
    
  });

  // $('#new_comment').on('submit', function(e){
  //   e.preventDefault();
    
  //   var url = $(this).attr('action')
  //   $.ajax({
  //     url: url,
  //     type: "POST",
  //     data: formData,
  //     dataType: 'json',
  //     processData: false,
  //     contentType: false
  //   })
  // })
})