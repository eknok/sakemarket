class PostsController < ApplicationController
  def index
    if params[:keyword]
      @keyword_results = Post.keyword_search(params[:keyword])
      @keyword = params[:keyword]
    elsif params[:city]
      @city_results = Post.city_search(params[:city])
      @city = params[:city]
    end
  end

  def show
    @post = Post.find(params[:id])
    @map = @post.maps.find(@post.id)
    @posts = Post.page(params[:page])
    @comments = @post.comments.page(params[:page]).per(3).order('updated_at DESC')
    @comment = @post.comments.build
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def post_params
  end

end
