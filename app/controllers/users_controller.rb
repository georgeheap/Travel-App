class UsersController < ApplicationController

  def index
    @users = User.all
  end
  def show
    @user = User.find(params[:id])
    respond_to do |format|
      format.html {}
      format.json {}
    end
  end
  def edit
    @user = User.find(params[:id])
    @destinations = Destination.all
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.update(user_params)
    redirect_to @user, notice: "Successfully updated user."
  end

  private

  def user_params
    unless params[:is_admin]
      params.require(:user).permit(:username, :password, :email, :from_location, :current_location, :bio)
    else

    end
  end
end
