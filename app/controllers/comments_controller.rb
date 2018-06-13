class CommentsController < ApplicationController
  def index
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(params_comment)
    if @comment.save
      redirect_to post_path(@post)
    else
      redirect_to root_path
    end
  end

  def update
  end

  def destroy
  end

  private

  def params_comment
    params.require(:comment).permit(:content)
  end
end
