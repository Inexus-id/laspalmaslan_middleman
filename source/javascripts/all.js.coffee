#= require jquery
#= require jquery-swipe
#= require underscore
#= require knockout
#= require sammy

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

# konckout app
# This is a simple *viewmodel* - JavaScript that defines the data and behavior of your UI
LasPalmasLanViewModel = ->
	this.posts = [{ title: "Estrenamos nueva web", intro: "Esta es la nueva web de Las Palmas Lan, en ella apareceran tododas las noticias con referencia al próximo evento que vamos a organizar, aun estamos bajo construcción, pero estamos trabajando duro para así poder ofrecer el mejor servicio posible.", body: "Esta es la nueva web de Las Palmas Lan, en ella apareceran tododas las noticias con referencia al próximo evento que vamos a organizar, aun estamos bajo construcción, pero estamos trabajando duro para así poder ofrecer el mejor servicio posible.", published_at: "27/12/2012" }]
# Activates knockout.js
ko.applyBindings(new LasPalmasLanViewModel())
	
