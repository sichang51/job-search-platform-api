class SessionsController < ApplicationController
  def create
    user = User.find_by(user_email: params[:user_email])
    if user && user.authenticate(params[:password])
      jwt = JWT.encode(
        {
          user_id: user.id,
          exp: 24.hours.from_now.to_i,
        },
        Rails.application.credentials.fetch(:secret_key_base),
        "HS256"
      )
      render json: { jwt: jwt, user_email: user.user_email, user_id: user.id }, status: :created
    else
      render json: {}, status: :unauthorized
    end
  end
end
