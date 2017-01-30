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
    @user = User.find(current_user.id)

  end

  def update
    @user = User.find_by(id: params[:id])
    if @user.update(user_params)
      redirect_to @user, notice: "Successfully updated user."
    else
      redirect_to @user, notice: "Unable to update user."
    end
  end
end
