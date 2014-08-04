{View} = require 'atom'

module.exports =
class AtomBourbonSnippetsView extends View
  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()
