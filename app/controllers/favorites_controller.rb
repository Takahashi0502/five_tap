class FavoritesController < ApplicationController

  def create
    favorite = current_user.favorites.build(beer_id: params[:beer_id])
    favorite.save
    redirect_to beer_path(params[:beer_id])
  end

  def destroy
    favorite = Favorite.find_by(beer_id: params[:beer_id], user_id: current_user.id)
    favorite.destroy
    redirect_to beer_path(params[:beer_id])
  end
end
