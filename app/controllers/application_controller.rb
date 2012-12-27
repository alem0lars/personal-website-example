class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :fetch_menu, :fetch_sidebar

  protected

  def fetch_menu
    default_fetcher('left_menu', :prod_exp_time => 6.days) do
      left_menu = [
        OpenStruct.new(body: 'Home',       url: home_path),
        OpenStruct.new(body: 'Curriculum', url: curriculum_path)
      ]
      left_menu # return
    end
    default_fetcher('right_menu', :prod_exp_time => 6.days) do
      [
      ]
    end
  end

  def fetch_sidebar
  end

  # { Global utility methods

  def reserved_for(role, redirect_url = home_url)
    unless current_user.role == role.to_s
      flash['error'] = 'Insufficient privileges'
      redirect_to redirect_url
      return false
    end
    return true
  end

  # }

  private

  def default_fetcher(name, opts = {}, &block)
    opts = {}.merge({
      :prod_exp_time  => 10.minutes,
      :dev_exp_time   => 6.seconds
    })
    exp_time = Rails.env.production? ? opts[:prod_exp_time] : opts[:dev_exp_time]
    instance_variable_set(:"@#{name}", Rails.cache.fetch(name, :expires_in => exp_time, &block))
  end

end
