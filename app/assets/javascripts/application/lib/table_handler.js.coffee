unless requires_register.has("table_handler") # Prevent multiple requires
  requires_register.add "table_handler"

  class TableHandler
    constructor: (wrp_selectors, opts) ->
      # { Get the arguments and merge them with the defaults
      default_opts = pagination: true
      wrp_selectors = Array.create(wrp_selectors)
      if Object.isObject(opts)
        @opts = Object.merge(default_opts, opts)
      else
        @opts = default_opts
      # }

      wrp_selectors.each (wrp_selector) ->
        $listing_pag_links = $("{1}>.pagination a".assign(wrp_selector))
        progress_bar = new ProgressBar(false)

        # { Handle ajax pagination if 'opts.pagination == true'
        if that.opts.pagination
          $listing_pag_links.live "ajax:before", ($type, data) -> # Before AJAX Requests
            $listing_wrp = $(this).parents(wrp_selector)
            progress_bar.start $listing_wrp

          $listing_pag_links.live "ajax:success", ($type, data) -> # On AJAX Success
            $listing_wrp = $(this).parents(wrp_selector)
            progress_bar.finish()
            $listing_wrp.html data

          $listing_pag_links.live "ajax:error", ($type, data) -> # On AJAx Error
            $listing_wrp = $(this).parents(wrp_selector)
            progress_bar.finish()
        # }
