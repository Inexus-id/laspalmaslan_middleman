#= require jquery
#= require jquery-swipe
window.menuEvent = () ->
		$("html").swipe
			swipeLeft: ->
				$("#main-nav").removeClass "big"
				$(".page-wrap").removeClass "small"

			swipeRight: ->
				$("#main-nav").addClass "big"
				$(".page-wrap").addClass "small"
$ ->
	$('.menu').click () ->
		$("#main-nav").toggleClass "big"
		$(".page-wrap").toggleClass "small"
	if window.innerHeight > window.innerWidth
		menuEvent()
