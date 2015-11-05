class ImagesController < ApplicationController

  def index
    @posts = Post.all
  end

end
