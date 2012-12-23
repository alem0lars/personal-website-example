unless requires_register.has("logger") # Prevent multiple requires
  requires_register.add "logger"

  class Logger
    constructor: (@global_opts) ->
      # { Get the arguments and merge them with the defaults
      default_opts = alert: false
      if Object.isObject(global_opts)
        @global_opts = Object.merge(default_opts, global_opts)
      else
        @global_opts = default_opts

      # }

    log: (msg, opts) ->

      # { Get the arguments override the global options
      if Object.isObject(opts)
        opts = Object.merge(global_opts, opts)
      else
        opts = global_opts

      # }
      unless opts.suppress
        console.log msg # Log the message into the console
        alert msg  if opts.alert # Log the message with an alert

  window.default_logger = new Logger()
