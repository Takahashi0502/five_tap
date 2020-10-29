class GoodsController < ApplicationController
  def create
    good = current_user.goods.build(comment_id: params[:comment_id])
    good.save
    @com = Comment.find(params[:comment_id])
  end

  def destroy
    good = Good.find_by(comment_id: params[:comment_id], user_id: current_user.id)
    good.destroy
    @com = Comment.find(params[:comment_id])
  end
end
