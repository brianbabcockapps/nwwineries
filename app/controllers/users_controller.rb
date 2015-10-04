class UsersController < ApplicationController
  
  def show
    @main = Main.order("updated_at").last
    @user = User.new(params[:user])
  end
  
  def new
    @main = Main.order("updated_at").last
    @user = User.new
  end
  
  def create
    @main = Main.order("updated_at").last
    @user = User.new(user_params)
    
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
