module Admin
  class BaseController < ApplicationController
    include Pundit::Authorization

    before_action :authenticate_user
    after_action :verify_authorized

    def current_user = @current_user

    private

    def authenticate_user
      header = request.headers['Authorization']
      token = header&.split(' ')&.last

      return render_unauthorized unless token

      decoded_token = JwtToken.decode(token)
      @current_user = User.find_by(id: decoded_token[:user_id])
    rescue JWT::ExpiredSignature, JWT::DecodeError, ActiveRecord::RecordNotFound => e
      render_unauthorized('Invalid token or user not found')
    end

    def render_unauthorized(message = 'Unauthorized')
      render json: { error: message }, status: :unauthorized
    end
  end
end
