#= require jquery
#= require jquery.nanoscroller.min
#= require jquery-swipe
#= require history
#= require knockout
#= require knockout.navigation
#= require app


window.menuEvent = () ->
	$("html").swipe
	swipeLeft: ->
		$("#main-nav").removeClass "big"
		$(".content").removeClass "small"

	swipeRight: ->
		$("#main-nav").addClass "big"
		$(".content").addClass "small"

jQuery ($) ->
	$('.menu').click () ->
		$("#main-nav").toggleClass "big"
		$(".content").toggleClass "small"
	if window.innerHeight > window.innerWidth
		menuEvent()
	$(".nano").nanoScroller({ contentClass: 'content_scroll' })
