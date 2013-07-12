$(document).ready ->
  libre = (num) ->
    t = true
    $(".prioridad").each ->
      t = false  if num is $(this).val()
    t

  $(".menos").on "click", (e) ->
    e.preventDefault()
    a = $(this).parent().parent().find("p > #changer")
    ind = a.val()
    c = libre(ind)
    while c is false
      if ind > 1
        ind--
        c = libre(ind.toString())
        a.val parseInt(ind)  if c is true
      else
        a.val 0
        c = true
    a.parent().parent().find("h3 > .num").text a.val()  if a.val() > "0"
    a.parent().parent().find("h3 > .num").text ""  if a.val() is "0"

  $(".mas").on "click", (e) ->
    e.preventDefault()
    a = $(this).parent().parent().find("p > #changer")
    ind = a.val()
    c = libre(ind)
    while c is false
      ind++
      c = libre(ind.toString())
      a.val parseInt(ind)  if c is true
    a.parent().parent().find("h3 > .num").text a.val()  if a.val() > "0"

  # $("#Plazas a").click (e) ->
  #   e.preventDefault()
  #   $(this).tab "show"