class UsersController < ApplicationController

    def create
        @user = User.create(user_params)

        if @user.errors.any?
            render json: @user.errors, status: :unprocessable_entity
        else
            auth_token = Knock::AuthToken.new payload: {sub: @user.id}
            render json: {username: @user.username, jwt: auth_token.token }, status: :created #, location: @message
        end
    end

    def sign_in
        @user = User.find_by_email(params[:email])
        if @user && @user.authenticate(params[:password])
            auth_token = Knock::AuthToken.new payload: {sub: @user.id}
            render json: {username: @user.username, jwt: auth_token.token }, status: 200
        else
            render json: {error: "Invalid email or password"}
        end

    end




    private
     # Only allow a list of trusted parameters through.
    def user_params
        params.permit(:username, :email, :password, :password_confirmation )
    end
end
