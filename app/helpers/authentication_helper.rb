module AuthenticationHelper

  def reserved_for(role, redirect_url = home_url)
    unless current_user.role == role.to_s
      flash['error'] = 'Insufficient privileges'
      redirect_to redirect_url
    end
  end

end
