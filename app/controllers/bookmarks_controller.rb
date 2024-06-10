class BookmarksController < ApplicationController
  before_action :authenticate_user! #confirming user logged in
  
  def create
    @bookmark = current_user.bookmarks.build(bookmark_params)
    if @bookmark.save
      render json: { status: 'success' }, status: :created
    else
      render json: { errors: @bookmark.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = current_user.bookmarks.find(params[:id])
    @bookmark.destroy
    redirect_to search_foods_path, notice: 'Bookmark removed'
  end

  private

    def bookmark_params
      params.require(:bookmark).permit(:place_id, :name, :address)
    end
end
