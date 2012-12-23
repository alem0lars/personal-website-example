$(document).ready ->

  # Enable dropdowns
  $('.dropdown-toggle').dropdown()

  # Enable tabs
  $('.nav-tabs a').hover (e) ->
    e.preventDefault()
    $(this).tab('show')

  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip()
