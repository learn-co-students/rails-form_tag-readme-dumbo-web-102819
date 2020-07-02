class PostsController < ApplicationController
  def index
  	#Post.create({title: "yea", description: "haha"})
    @posts = Post.all
  end

  def new

  end

  def create
	  Post.create(title: params[:post][:title], description: params[:post][:description])
	  redirect_to posts_path
	end
  
end
