class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_parameters)
    if @user.save
      flash[:notice] = "Post successfully created"
    else
      flash[:notice] = "Error"
    end
    redirect_to @user
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_parameters
    params.require(:user).permit(:email, :username, :password_digest)
  end

end
