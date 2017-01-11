class PostsController < ApplicationController

  def index
    @post = Post.new
    @posts = Post.all
    render :index
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to :posts
    else
      render :posts
    end
  end

  private

  def post_params
    params.require(:post).permit(:author, :title, :body, :image_url)
  end
end
