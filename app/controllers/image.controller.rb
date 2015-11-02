class ImageController < ApplicationController

  def index
    @Users = user.all
  end
