class PostsController < ApplicationController
  before_action :authorize, except: [:index, :show]

  def index
    render text: "Post your pizza"
    @post = Post.all.sort_by {|post| post.created_at}.reverse
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      flash[:notice] = "you posted a pizza, get saucy"
      redirect_to user_path(current_user)
    else
      render 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "To the trash can?"
    redirect_to user_path(current_user)
  end

  def post_params
    params.require(:post).permit(:story, :image)
  end

end
