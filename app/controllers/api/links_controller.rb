class Api::LinksController < ApplicationController
  respond_to :json

  def index
    @links = Link.published
    respond_with @links
  end

  def show
    @link = Link.published.find params[:id]
    respond_with @link
  end

  def create
    @link = Link.new link_params
    @link.save
    respond_with @link
  end

  def update
    @link = Link.published.find params[:id]
    @link.update link_params
    respond_with @link
  end

  def destroy
    @link = Link.published.find params[:id]
    @link.destroy
    respond_with @link
  end

  private

  def link_params
    params.require(:link).permit(:url, :description, :author_id)
  end

end
