$(document).ready ->
  # An event to listen for
  splitTable = (original) ->
    original.wrap "<div class='table-wrapper' />"
    copy = original.clone()
    copy.find("td:not(:first-child), th:not(:first-child)").css "display", "none"
    copy.removeClass "responsive"
    original.closest(".table-wrapper").append copy
    copy.wrap "<div class='pinned' />"
    original.wrap "<div class='scrollable' />"
    setCellHeights original, copy
  unsplitTable = (original) ->
    original.closest(".table-wrapper").find(".pinned").remove()
    original.unwrap()
    original.unwrap()
  setCellHeights = (original, copy) ->
    tr = original.find("tr")
    tr_copy = copy.find("tr")
    heights = []
    tr.each (index) ->
      self = $(this)
      tx = self.find("th, td")
      tx.each ->
        height = $(this).outerHeight(true)
        heights[index] = heights[index] or 0
        heights[index] = height  if height > heights[index]


    tr_copy.each (index) ->
      $(this).height heights[index]

  switched = false
  updateTables = ->
    if ($(window).width() < 767) and not switched
      switched = true
      $("table.responsive").each (i, element) ->
        splitTable $(element)

      true
    else if switched and ($(window).width() > 767)
      switched = false
      $("table.responsive").each (i, element) ->
        unsplitTable $(element)


  $(window).load updateTables
  $(window).on "redraw", ->
    switched = false
    updateTables()

  $(window).on "resize", updateTables
