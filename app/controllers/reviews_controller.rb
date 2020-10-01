class ReviewsController < ApplicationController

  def create
    @review = ReviewTagRelation.new(review_params)
    @review.user_id = current_user.id
    binding.pry
    if @review.valid?
      @review.save
      return redirect_to beer_path(@review.beer_id)
    else
      render 'beer/show'
    end
  end

  private

  def review_params
    params.require(:review_tag_relation).permit(:content, :images, :name).merge(beer_id: params[:beer_id])
  end
end
