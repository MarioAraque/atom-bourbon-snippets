{View} = require 'atom'

module.exports =
class AtomBourbonSnippetsView extends View
  @content: ->
    @div class: 'bourbon overlay from-top', =>
      @div "The Bourbon package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "compass:toggle", => @toggle()

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
