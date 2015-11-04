class PostsController < ApplicationController


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
    # Instatiate an edit funtion using post.edit.
  end

  def update
    # render the new edit to the post.
  end

  def destroy
    @post.destroy
    redirect_to user_path(current_user)
  end

  def post_params
    params.require(:post).permit(:story, :image)
  end

end
