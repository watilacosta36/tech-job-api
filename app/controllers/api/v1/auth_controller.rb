module Api
  module V1
    class AuthController < ApplicationController
      def login
        user = User.find_by(email: permitted_params[:email])

        if user && user.authenticate(permitted_params[:password])
          payload = { user_uid: user.id }
          token = JwtToken.encode(payload)

          render json: { token: }, status: :ok
        else
          render json: { message: "Not authorized" }, status: :unauthorized
        end
      end

      def sign_up
        user = User.new(permitted_params)

        if user.save
          payload = { user_id: user.id }
          access_token = JwtToken.encode(payload)

          render json: {
            success: true,
            user:,
            access_token:
          }, status: :created
        else
          render json: { success: false }, status: :unprocessable_content
        end
      end

      private

      def permitted_params
        params.expect(user: [ :firstname, :lastname, :email, :password, :profile ])
      end
    end
  end
end
