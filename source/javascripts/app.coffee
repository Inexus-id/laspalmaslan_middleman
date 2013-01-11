

$ ->
	# Define application namespace
	App = window.App = {}

	# Let ko.navigation know where to look
	ko.navigation.setNamespace App

	# Define view model constructors
	App.News = ->
		@bookmarkable = true
		@title = ko.observable("Las Palmas Lan 2013 | Noticias")

	App.Calendar = ->
		@bookmarkable = true
		@title = ko.observable("Las Palmas Lan 2013 | Calendario")

	App.Tournaments = ->
		@bookmarkable = true
		@title = ko.observable("Las Palmas Lan 2013 | Torneos")

	App.Disclaimer = ->
		@bookmarkable = true
		@title = ko.observable("Las Palmas Lan 2013 | Aviso Legal")

	App.Inscriptions = ->
		@bookmarkable = true
		@title = ko.observable("Las Palmas Lan 2013 | Inscripciones")


	# We will do ko.applyBindings on the ShellModel
	App.ShellModel = ->
		self = this
		
		# Store a reference in App.navigation for easy access from other view models
		@navigation = App.navigation = new ko.navigation.ShellNavigationModel(
			
			# The vm to initialize with, either an instance or factory/accessor function
			defaultViewModel: new App.News()
			expiredViewModel:
				viewName: "not-found"

			maxStackSize: 5 # Expire items after a certain point to cap memory usage
		)
		
		# View model navigation
		@GoToNews = ->
			self.navigation.navigateTo new App.News()

		@GoToCalendar = ->
			self.navigation.navigateTo new App.Calendar()

		@GoToTournaments = ->
			self.navigation.navigateTo new App.Tournaments()

		@GoToDisclaimer = ->
			self.navigation.navigateTo new App.Disclaimer()

		@GoToInscriptions = ->
			self.navigation.navigateTo new App.Inscriptions()

	ko.applyBindings new App.ShellModel()
