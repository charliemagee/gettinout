# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $(".jquery-ui-date").datepicker(
    altField: "#date-alt",
    altFormat: "yy-mm-d"
  )

  $(".activity").click ->
    $(this).addClass("selectedactivity").removeClass("activity")
    $(".activity").hide()
    $(".activityquestion").hide()
    $("#wantsto").removeClass("hidden")
    $("#activitydate").removeClass("hidden")