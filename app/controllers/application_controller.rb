class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken
  # before_action :authenticate_account!

  # Chỉ thực hiện controller khi request thông qua API
  protect_from_forgery unless: -> { request.format.json? }
end
