$(function(){
  $("#menu-btn").on('change', function(){
    $('.header-dropdown').toggle('slow');
    // $(this).off('click');
    // $(this).on('click');
    console.log('humberger.js is running!');
    

  });
});