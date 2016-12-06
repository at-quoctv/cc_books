class UsersController < ApplicationController
    before_action :find_user, except: [:index, :new, :create]
  def new
    @user = User.new
  end
  def index
    @user = User.params [:id]
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

  
end
