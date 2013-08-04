class Api::PostsController < ApplicationController
  respond_to :json
  before_action :set_post, only: [:show, :update, :destroy]

  def index
    @posts = Post.published
    respond_with @posts
  end

  def show
    respond_with @post
  end

  def create
    @post = Post.new post_params
    @post.save
    respond_with @post
  end

  def update
    @post.update post_params
    respond_with @post
  end

  def destroy
    @post.destroy
    respond_with @post
  end

  private

  def set_post
    @post = Post.published.find params[:id]
  end

  def post_params
    params.require(:post).permit(:url, :description, :author_id)
  end

end
