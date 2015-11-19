# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('a[data-remote]').on 'ajax:success', (e, data, status, xhr) ->
    $("[data-id='#{data.id}'] [data-attribute='approved']").html(data.approved).addClass('ajax-success', 300).removeClass('ajax-success', 400)
