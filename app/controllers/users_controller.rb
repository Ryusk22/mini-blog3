class UsersController < ApplicationController

  def create

  end
  def edit
  end

  def update
    if current_user == params[:user][:name]
      render :edit
    elsif current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def user_params
    params.require(:user),permit(:name, :email)
  end
end
