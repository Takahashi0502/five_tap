class LikesController < ApplicationController
  def create
    like = current_user.likes.build(review_id: params[:review_id])
    like.save
    redirect_to review_path(params[:review_id])
  end

  def destroy
    like = Like.find_by(review_id: params[:review_id], user_id: current_user.id)
    like.destroy
    redirect_to review_path(params[:review_id])
  end
end
