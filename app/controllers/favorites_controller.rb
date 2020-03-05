class FavoritesController < ApplicationController

  def create
    favorite = Favorite.new(
      user_id = current_user.user_id,
      book_id = params[:book_id]
    )
    favorite.save
    redirect_to(:back)
  end

  def destroy
    favorite = Favorite.find_by(
      user_id = current_user.user_id,
      book_id = params[:book_id]
    )
    favorite.destroy
    redirect_to(:back)
  end

end
