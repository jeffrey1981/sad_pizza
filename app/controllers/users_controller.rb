class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
  end

  def create
    @user = User.new(user_params)
      if @user.save
        flash[:notice] = "You are now cheesy!"
        redirect_to root_path
      else
        render 'new'
      end
    end

    def user_params
      params.require(:user).permit(:name, :username, :email, :password, :password_confirmation)
    end

  private

    def authorize
      @user = User.find(params[:id])
      redirect_to root_path if @user != current_user
    end
end
