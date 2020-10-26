class LikesController < ApplicationController
  def create
    @review = Review.find(params[:review_id])
    like = current_user.likes.build(review_id: params[:review_id])
    like.save
  end

  def destroy
    @review = Review.find(params[:review_id])
    like = Like.find_by(review_id: params[:review_id], user_id: current_user.id)
    like.destroy
  end
end
