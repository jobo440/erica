class PostsController < ApplicationController
  def parent
    @posts = Post.all.order('position')
  end

  def teacher
    @posts = Post.all.order('position')
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

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to root
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(params[:post].permit(:title, :body, :date, :section, :position))
      redirect_to @post
    else
      render 'edit'
    end
  end

  def show_all_posts
    @posts = Post.all.order('position')
  end
  private

  def post_params
    params.require(:post).permit(:title, :body, :date, :section, :position)
  end
end