class GoodsController < ApplicationController
  def create
    good = current_user.goods.build(comment_id: params[:comment_id])
    good.save
    comment = Comment.find(params[:comment_id])
    redirect_to review_path(comment.review_id)
  end

  def destroy
    good = Good.find_by(comment_id: params[:comment_id], user_id: current_user.id)
    good.destroy
    comment = Comment.find(params[:comment_id])
    redirect_to review_path(comment.review_id)
  end
end
