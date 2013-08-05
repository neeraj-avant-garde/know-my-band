# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$.fn.datetimepicker.defaults =
  maskInput: true,           # disables the text input mask
  pickDate: true,            # disables the date picker
  pickTime: true,            # disables de time picker
  pick12HourFormat: true,    # enables the 12-hour format time picker
  pickSeconds: false,        # disables seconds in the time picker
  startDate: -Infinity,      # set a minimum date
  endDate:   Infinity,       # set a maximum date
  language: 'en'             # set language English

#$(document).ready -> 
#  $('#eventStartTimeContainer').datetimepicker ->

#  $('#eventEndTimeContainer').datetimepicker ->
