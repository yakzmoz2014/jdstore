class Account::UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to account_users_path, notice: "更新成功"
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email)
  end
end
