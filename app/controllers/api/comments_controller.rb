class Api::CommentsController < ApplicationController
  respond_to :json

  def index
    @comments = post.comments
    respond_with @comments
  end

  def show
    @comment = post.comments.find params[:id]
    respond_with @comment
  end

  def create
    @comment = post.comments.new comment_params
    @comment.save
    respond_with @comment
  end

  def update
    @comment = post.comments.find params[:id]
    @comment.update comment_params
    respond_with @comment
  end

  def destroy
    @comment = post.comments.find params[:id]
    @comment.destroy
    respond_with @comment
  end

  private

  def post
    @post ||= Post.find params[:post_id]
  end

  def comment_params
    params.require(:comment).permit(:body, :author_id)
  end

end
