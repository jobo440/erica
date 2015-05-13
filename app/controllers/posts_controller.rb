class PostsController < ApplicationController
  def blog
    @posts = Post.all.order('created_at DESC')
  end
end