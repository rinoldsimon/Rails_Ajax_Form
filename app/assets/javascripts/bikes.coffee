$(document).ready ->

  $(document).bind "ajaxSuccess", "form.bike_form", (event, xhr, settings) ->
    $bike_form = $(event.data)
    $error_container = $("#error_explanation", $bike_form)
    $error_container_ul = $("ul", $error_container)
    $("<p>").html(xhr.responseJSON.name + " saved.").appendTo $bike_form
    if $("li", $error_container_ul).length
      $("li", $error_container_ul).remove()
      $error_container.hide()

  $(document).bind "ajaxError", "form.bike_form", (event, jqxhr, settings, exception) ->
    $bike_form = $(event.data)
    $error_container = $("#error_explanation", $bike_form)
    $error_container_ul = $("ul", $error_container)
    $error_container.show()  if $error_container.is(":hidden")
    $.each jqxhr.responseJSON, (index, message) ->
      $("<li>").html(message).appendTo $error_container_ul
