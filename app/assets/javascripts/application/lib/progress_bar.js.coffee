unless requires_register.has("progress_bar") # Prevent multiple requires
  requires_register.add "progress_bar"

  class ProgressBar
    constructor: (@replace = true) ->
      @$container = null
      @$old_content = null
      @finished = null

      # { Create the progress_bar
      @$progress_bar_wrp_classes = ".progress, .progress-striped, .active"
      @$progress_bar_wrp = $("<div />",
        class: "progress progress-striped active"
      )
      @$progress_bar = $("<div />",
        class: "bar"
      ).css("width", "100%").appendTo(@$progress_bar_wrp)
      # }

    # Start the progressbar animation
    start: (container) ->
      animator = undefined
      if $(container).length > 1
        throw "ProgressBar Error: A container for a progress bar must be unique"

      # { Add the progress_bar into its container
      @$container = $(container)
      @$old_content = @$container.html()
      @finished = false
      if @replace # Replace the container's contents with the progress_bar
        @$container.html @$progress_bar_wrp
      else # Put the progress_bar on top of the container's contents
        @$progress_bar_wrp.prependTo @$container
      # }

      # Function to animate the progress bar until this.finished == false
      animator = ->
        unless @finished
          setTimeout( ->
            @$progress_bar.css "width", "0%"
            setTimeout( ->
              @$progress_bar.css "width", "100%"
              animator()
            , 600)
          , 600)

      # Trigger the first animation
      animator()

    # Finish the progressbar animation
    finish: ->
      @$container.children(@$progress_bar_wrp_classes).remove()
      @finished = true

    # Finish and rollback to the old content
    rollback: ->
      @finish()
      @$container.html @$old_content
