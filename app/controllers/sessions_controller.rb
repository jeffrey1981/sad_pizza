class SessionsController < ApplicationController

  def new
  end

    def create
      user = User.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to root_path, notice: "You're Cheesy!"
      else
        flah.now.alert = 'Invalid cheesiness - try again!'
        render 'new'
      end
    end

    def destroy
      session[:user_id] = nill
      redirect_to root_path, notice: 'Not cheesy!'
    end

  end
