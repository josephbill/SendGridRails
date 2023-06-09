class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
  
    if @user.save
      UserMailer.with(user: @user).welcome_email(@user).deliver_now
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
