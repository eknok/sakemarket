class PostController < ApplicationController
  def index
    @post = Post.all
  end

  def show
  end

  def edit
  end
end
