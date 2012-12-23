unless requires_register.has('messages') # Prevent multiple requires
  requires_register.add 'messages'

  class window.Message
    constructor: (@type, @msg, @duration = Message.Duration.SLOW) ->

      message_attrs = switch @type
        when 'error', 'alert' then ['Error!', 'message-error alert-error']
        when 'warning' then ['Warning!', 'message-warning']
        when 'success' then ['Success!', 'message-success alert-success']
        when 'info', 'notice' then ['', 'message-info alert-info']
        else throw new Exception('Invalid message type.')

      @$message = $("<div/>", class: 'message alert ' + message_attrs[1])

      msg_pre_text = $("<strong />", text: message_attrs[0]).prop("outerHTML")

      # Add the pre-msg and the msg
      if msg_pre_text? && msg_pre_text.length > 0
        @$message.append("{1} {2}".assign(msg_pre_text, msg))
      else
        @$message.append msg

    start: ->
      @$message.appendTo($("#messages"))
      unless Object.equal(@duration, Message.Duration.PERMANENT)
        @$message.fadeOut(@duration)

  window.Message.Duration =
    PERMANENT: null
    SLOW: 6000
    FAST: 3000
