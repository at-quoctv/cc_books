class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      log_in @user
      flash.now[:success] = t "flash.login_success"
      redirect_to @user
    else
      render :new
    end
  end
  private
  def user_params
    params.require(:user).permit :name, :email, :password,        
      :password_confirmation
  end

  def find_user
    @user = User.find_by id: params[:id]
    if @user.blank?
      flash[:danger] = t "flash.find_user_fail"
      redirect_to root_url
    end
  end

  def valid_user
    redirect_to root_url unless @user.current_user? current_user
  end
end
