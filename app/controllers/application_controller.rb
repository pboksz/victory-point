class ApplicationController < ActionController::Base
  before_filter :authenticate_user!

  protect_from_forgery

  after_filter :set_csrf_cookie_for_angular

  def authenticate_admin_user!
    redirect_to root_path, :alert => 'Unauthorized!' unless authenticate_user! && current_user.admin?
  end

  def set_csrf_cookie_for_angular
    cookies['XSRF-TOKEN'] = form_authenticity_token if protect_against_forgery?
  end

  protected

  def verified_request?
    super || form_authenticity_token == request.headers['X_XSRF_TOKEN']
  end
end
