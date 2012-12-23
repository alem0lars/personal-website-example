unless Object.has(window, "requires_register") # Prevent multiple requires

  class RequiresRegister
    constructor: ->
      @requires = []

    add: (require_name) ->
      @requires.push(require_name)

    has: (require_name) ->
      not Object.equal(@requires.findIndex(require_name), -1)

  window.requires_register = new RequiresRegister()
