class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_parameters)
    @user.save
  end

  private

  def user_parameters
    params.require(:user).permit(:email, :username, :password_digest)

  end

end
