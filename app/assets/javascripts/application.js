// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
$(document).on('turbolinks:load', function() {
  associationsHideOnLoad();
  changeActiveRetype();
  switchToAssociation();
});

var associationsHideOnLoad = function(){
  $('.retype').removeClass('hidden');
  $('.association').addClass('hidden');

}

var changeActiveRetype = function(){
  $('.retype-input').on('change', function(e){
    if ($(this).val() === $(this).attr('placeholder')){
      $(this).addClass('hidden')
      $(this).removeClass('active')
      var currentButton = $(this).next().next()
      currentButton.addClass('hidden')
      currentButton.removeClass('active')
      var nextInput = $(this).next().next().next()
      nextInput.removeClass('hidden')
      nextInput.addClass('active')
      var nextButton = nextInput.next().next()
      nextButton.removeClass('hidden')
      nextButton.addClass('active')
    }
  })
}

var switchToAssociation = function(){
  $('.retype-input').on('change', function(){

  if (!$('.retype-input.active').attr('class')){
    $('.retype').addClass('hidden')
    $('.association').removeClass('hidden')
  }
})
}
