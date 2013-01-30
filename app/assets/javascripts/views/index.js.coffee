class VP.Views.Index extends Backbone.View
  template: HandlebarsTemplates['index']

  initialize: ->
    console.log(HandlebarsTemplates['index']())
    console.log("first page!")
