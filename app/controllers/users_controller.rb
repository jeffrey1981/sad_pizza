class UsersController < ApplicationController
  before_action :authenticate, only: [:show, :edit, :update]
  before_action :authorize, only: [:show, :edit, :update]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end


  def create
    @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        flash[:notice] = "You are now cheesy!"
        redirect_to root_path
      else
        render 'new'
      end
    end

  def show
  end

  def edit
  end

  def update
  end

    def user_params
      params.require(:user).permit(:name, :username, :email, :password, :password_confirmation)
    end

  private

    def authenticate
      redirect_to new_session_path, alert: 'You gotta log in to get cheesy' if current_user.nil?
    end

    def authorize
      @user = User.find(params[:id])
      redirect_to root_path if @user != current_user
    end
end
