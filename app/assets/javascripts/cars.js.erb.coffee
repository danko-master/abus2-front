# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
     $(".group1").colorbox({rel:'group1', transition:"none", maxWidth:"85%", maxHeight:"85%", current: "{current} <%= I18n.t('views.image.of') %> {total}"})
     