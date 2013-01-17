
jQuery ($) ->
	# Define application namespace
	App = window.App = {}

	# Define view model constructors
	App.News = ->
		@bookmarkable = true
		@title = ko.observable("Las Palmas Lan 2013 | Noticias")
		@

	App.Calendar = ->
		@bookmarkable = true
		@title = ko.observable("Las Palmas Lan 2013 | Calendario")
		@

	App.Tournaments = ->
		@bookmarkable = true
		@title = ko.observable("Las Palmas Lan 2013 | Torneos")
		@

	App.Disclaimer = ->
		@bookmarkable = true
		@title = ko.observable("Las Palmas Lan 2013 | Aviso Legal")
		@

	App.Inscriptions = ->
		@bookmarkable = true
		@title = ko.observable("Las Palmas Lan 2013 | Inscripciones")
		@

