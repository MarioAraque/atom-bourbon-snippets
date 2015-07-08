AtomBourbonSnippetsView = require './atom-bourbon-snippets-view'
{CompositeDisposable} = require 'atom'

module.exports = AtomBourbonSnippets =
  atomBourbonSnippetsView: null
  modalPanel: null
  subscriptions: null

  activate: (state) ->
    @atomBourbonSnippetsView = new AtomBourbonSnippetsView(state.atomBourbonSnippetsViewState)
    @modalPanel = atom.workspace.addModalPanel(item: @atomBourbonSnippetsView.getElement(), visible: false)

    # Events subscribed to in atom's system can be easily cleaned up with a CompositeDisposable
    @subscriptions = new CompositeDisposable

    # Register command that toggles this view
    @subscriptions.add atom.commands.add 'atom-workspace', 'atom-bourbon-snippets:toggle': => @toggle()

  deactivate: ->
    @modalPanel.destroy()
    @subscriptions.dispose()
    @atomBourbonSnippetsView.destroy()

  serialize: ->
    atomBourbonSnippetsViewState: @atomBourbonSnippetsView.serialize()

  toggle: ->
    console.log 'AtomBourbonSnippets was toggled!'

    if @modalPanel.isVisible()
      @modalPanel.hide()
    else
      @modalPanel.show()
