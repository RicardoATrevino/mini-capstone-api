class ApplicationController < ActionController::Base
  def authentication_admin
    unless current_user && current_user.admin
      render json: {}, status: :unauthorized
    end
  end

  protect_from_forgery with: :exception, unless: -> { request.format.json? }
end
