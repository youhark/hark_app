$(document).ready(function(){

  $('.img-div').each(function(){
    var dataImage = $(this).data('image');
    $(this).css('background-image','url('+dataImage+')');
  });

});