# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
do_on_load = ->
  $('#search_user_name').autocomplete
    source: "/ajax/users",
    autoFocus: true,
    change: (event, data) ->
      $('#invitation_user_id').val(data.item.id)

$(document).ready do_on_load
$(window).bind "page:change", do_on_load
