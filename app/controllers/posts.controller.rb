class PostsController < ApplicationController
  def index
    render text: "You've reached the index page"
    # query the post model for all of its posts.
    # pass all of the posts to the index view for posts.
  end

  def new
    # Instatiate a new post with post.new.
    # render form a view to create a new posts.
  end

  def create
    # GET the data/post from the user and save it form the users input.

  end

  def show
    # Render the completed post for view.

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

end
