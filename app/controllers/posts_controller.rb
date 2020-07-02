class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    white = params[:post].permit(:title, :description)
    Post.create(white)
    redirect_to '/posts'
  end
  
end
