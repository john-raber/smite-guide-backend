class Api::V1::UsersController < ApplicationController
  def create
    @user = User.create(user_params)

    if @user.valid?
      render json: { user: UserSerializer.new(@user) }, status: :created
    else
      render json: { error: @user.errors }, status: :not_acceptable
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :avatar)
  end
end
