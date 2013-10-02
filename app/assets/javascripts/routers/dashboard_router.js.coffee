class ProfitPilot.Routers.Dashboard extends Backbone.Router
	routes: ->
		'' : 'index'
		'people' : 'people'
		'estimates' : 'estimates'
		'projects' : 'projects'
		'costings' : 'costings'
		'calendar' : 'calendar'
		'settings' : 'settings'

	initialize: ->
		@collection = new ProfitPilot.Collections.Projects()
		@collection.fetch()

	index: ->
		view = new ProfitPilot.Views.DashboardIndex()
		$('#content').html(view.render().el)
	people: ->
		alert 'people here'
	estimates: ->
		alert 'estimates'
	projects: ->
		# alert 'test'
		projectsView = new ProfitPilot.Views.ProjectsIndex(collection: @collection)
		$('#content').html(projectsView.render().el)
	costings: ->
		alert 'costings'
	calendar: ->
		alert 'calendar'
	settings: ->
		alert 'settings'
