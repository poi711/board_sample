class HomeController < ApplicationController
  def index
  end
  def write

    new_post = Post.new
    new_post.name = params[:title]
    new_post.content = params[:content]
    new_post.save
    
    redirect_to '/list'
  end
  def list
    @all_post = Post.all.order("id desc")
  end
  def rewrite
  end
end
