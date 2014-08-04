{View} = require 'atom'

module.exports =
class AtomBourbonSnippetsView extends View
  initialize: (serializeState) ->
    atom.workspaceView.command "atom-bourbon-snippets:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
