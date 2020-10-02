class LikesController < ApplicationController
  def create
    like = current_user.likes.build(review_id: prams[:review_id])
    like.save
    redirect_to beer_path(params[:beer_id])
  end

  def destroy
    like = Like.find_by(review_id: params[:review_id], user_id: current_user.id)
    like.destroy
    redirect_to beer_path(params[:beer_id])
  end
end
