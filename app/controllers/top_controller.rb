class TopController < ApplicationController
  def index
    @posts = Post.order("RANDOM()").limit(9)
  end
end
