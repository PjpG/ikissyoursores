// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function() {
  // activating fancybox
  $('.fancybox-all').fancybox();
  
  $('.fancybox-dark').fancybox();
  
  $('.fancybox-graffiti').fancybox();
//   
  // home animation
  $('#desc-logo').hover(function(){
    $('#getin').toggle("drop");
  });
//   
  // logo animation
  $('#no-home').animate({
    'marginLeft' : "-=10%"
  });
  $('#no-home').hover(function(){
    $('#back').fadeToggle("fast");
  });
//   
  // gallery animations
  $('#all_photos').click(function(){
    $(this).removeClass("unactive")
    $(this).addClass("active");
    $('#graffiti_photos').removeClass('active');
    $('#graffiti_photos').addClass('unactive');
    $('#dark_photos').removeClass('active');
    $('#dark_photos').addClass("unactive");
    $('.dark').hide();
    $('.graffiti').hide();
    $('.all').fadeIn("slow");
  });
  $('#graffiti_photos').click(function(){
    $(this).removeClass("unactive")
    $(this).addClass("active");
    $('#dark_photos').removeClass('active');
    $('#dark_photos').addClass("unactive");
    $('#all_photos').removeClass("active");
    $('#all_photos').addClass("unactive");
    $('.dark').hide();
    $('.all').hide();
    $('.graffiti').fadeIn("slow");
  });
  $('#dark_photos').click(function(){
    $(this).removeClass("unactive");
    $(this).addClass("active");
    $('#all_photos').removeClass("active");
    $('#all_photos').addClass("unactive");
    $('#graffiti_photos').removeClass('active');
    $('#graffiti_photos').addClass('unactive');
    $('.all').hide();
    $('.graffiti').hide();
    $('.dark').fadeIn("slow");
  });
//   
  // social sliders
  $('#lookbook').mouseenter(function() {
    $(this).animate({
      'right' : '-10%'
    }, {
      duration: 500,
      specialEasing: {
        width: 'linear',
        height: 'easeOutBounce'
      }
    });
  });
  $('#lookbook').mouseleave(function(){
    $(this).animate({
      'right' : '-11%'
    }, 1000);
  });
  
  $('#followgram').mouseenter(function() {
    $(this).animate({
      'right' : '-10%'
    }, {
      duration: 1000,
      specialEasing: {
        width: 'linear',
        height: 'easeOutBounce'
      }
    });
  });
  $('#followgram').mouseleave(function(){
    $(this).animate({
      'right' : '-11%'
    }, 1000);
  });
  
  
//   
});

// hiding loading div
function hideDiv() {
  $("#loading").slideToggle("slow");
}

