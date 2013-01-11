#= require jquery
#= require jquery-swipe
#= require history
#= require knockout
#= require knockout.navigation

window.menuEvent = () ->
	$("html").swipe
	swipeLeft: ->
		$("#main-nav").removeClass "big"
		$(".content").removeClass "small"

	swipeRight: ->
		$("#main-nav").addClass "big"
		$(".content").addClass "small"

$ ->
	$('.menu').click () ->
		$("#main-nav").toggleClass "big"
		$(".content").toggleClass "small"
	if window.innerHeight > window.innerWidth
		menuEvent()
