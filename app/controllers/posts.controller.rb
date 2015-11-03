class PostsController < ApplicationController

  def index
    render text: "Post your pizza"
    @post = Post.all.sort_by {|post| post.created_at}.reverse
  end

  def new
    # Instatiate a new post with post.new.
    # render form a view to create a new posts.
  end


  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = @user.post.build(post_params)
  end

  def edit
    # Instatiate an edit funtion using post.edit.

  end

  def update
    # render the new edit to the post.

  end

  def destroy
    # Create a delete post option to remove all assets associated with the post.

  end

  def post_params
    params.require(:image).permit(:)

  end

end
