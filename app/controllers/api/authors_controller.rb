class Api::AuthorsController < ApplicationController
  respond_to :json
  before_filter :load_author, only: [:show, :update, :destroy]

  def index
    @authors = Author.all
    respond_with @authors
  end

  def show
    respond_with @author
  end

  def create
    @author = Author.new author_params
    @author.save
    respond_with @author
  end

  def update
    @author.update author_params
    respond_with @author
  end

  def destroy
    @author.destroy
    respond_with @author
  end

  private

  def load_author
    @author = Author.find params[:id]
  end

  def author_params
    params.require(:author).permit(:name, :email)
  end
end
