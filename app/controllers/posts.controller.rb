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
    image = Image.new(image_params)
    image.user = current_user
    if image.save
      flash[:notice] = "you posted a pizza, get saucy"
      redirect_to root_path
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
    params.require(:image).permit(:image_uri)
  end

end
