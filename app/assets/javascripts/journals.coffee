# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('a[data-remote]').on 'ajax:success', (e, data, status, xhr) ->
    data.approved = 'false' unless data.approved
    $("[data-id='#{data.id}'] [data-attribute='approved']")
      .animate({
          background: "green"
        }, 1500 )
      .html(data.approved)

  #$('#flash').show().html('Journal approved').fadeOut(1300)
