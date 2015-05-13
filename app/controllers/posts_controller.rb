class PostsController < ApplicationController
  def parent
    @posts = Post.all.order('created_at DESC')
  end



  def blog
    @posts = Post.all.order('created_at DESC')
  end

  def new 
    @posts = Post.new
  end

  def show 
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to @post
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :date, :section, :order)
  end
end