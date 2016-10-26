class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    post = Post.new(post_params)
  end

  def show
    @post = Post.find(params[:format])

  end

  def edit
  end

  def update
  end

  def destroy
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
