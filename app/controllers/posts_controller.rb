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
