function readURL(input) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();

    reader.onload = function (e) {
      $('#img_prev')
      .attr('src', e.target.result)
      .width(100)
      .height(100);
    };

    reader.readAsDataURL(input.files[0]);
  }
}
