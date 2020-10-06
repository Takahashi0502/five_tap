class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.valid?
      @comment.save
      redirect_to review_path(params[:review_id])
    else
      @review = Review.find(params[:review_id])
      render 'reviews/show'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content).merge(review_id: params[:review_id], user_id: current_user.id)
  end
end
