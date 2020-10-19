class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # protect_from_forgery with: :exception
  include DeviseTokenAuth::Concerns::SetUserByToken
  # include Error::ErrorHandler
  protect_from_forgery unless: -> { request.format.json? }
  skip_before_action :verify_authenticity_token, if: :devise_controller?
  before_action :authenticate_api_v1_user_user!

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, alert: exception.message
  end

  def current_user
    current_api_v1_user_user
  end

  # def current_ability
  #   # @current_ability ||= ::AdminAbility.new(current_admin)
  # end
end
