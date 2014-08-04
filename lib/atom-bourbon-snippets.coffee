AtomBourbonSnippetsView = require './atom-bourbon-snippets-view'

module.exports =
  atomBourbonSnippetsView: null

  activate: (state) ->
    @atomBourbonSnippetsView = new AtomBourbonSnippetsView(state.atomBourbonSnippetsViewState)

  deactivate: ->
    @atomBourbonSnippetsView.destroy()

  serialize: ->
    atomBourbonSnippetsViewState: @atomBourbonSnippetsView.serialize()
