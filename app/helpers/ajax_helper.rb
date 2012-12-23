module AjaxHelper

  def ajax?
    request.xhr? == 0
  end

end
