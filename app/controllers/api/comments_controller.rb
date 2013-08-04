class Api::CommentsController < ApplicationController
  respond_to :json

  def index
    @comments = link.comments
    respond_with @comments
  end

  def show
    @comment = link.comments.find params[:id]
    respond_with @comment
  end

  def create
    @comment = link.comments.new comment_params
    @comment.save
    respond_with @comment
  end

  def update
    @comment = link.comments.find params[:id]
    @comment.update comment_params
    respond_with @comment
  end

  def destroy
    @comment = link.comments.find params[:id]
    @comment.destroy
    respond_with @comment
  end

  private

  def link
    @link ||= Link.find params[:link_id]
  end

  def comment_params
    params.require(:comment).permit(:body, :author_id)
  end

end
