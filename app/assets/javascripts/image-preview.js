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