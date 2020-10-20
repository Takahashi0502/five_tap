class ReviewsController < ApplicationController
  before_action :move_to_signin, only: [:create]
  
  def create
    @review = ReviewTagRelation.new(review_params)
    @review.user_id = current_user.id
    if @review.valid?
      @review.save
      return redirect_to beer_path(@review.beer_id)
    else
      @beer = Beer.find(params[:beer_id])
      @reviews = Review.where(beer_id: @beer.id)
      render 'beers/show'
    end
  end

  def show
    @review = Review.find(params[:id])
    @comment = Comment.new
  end

  private

  def review_params
    params.require(:review_tag_relation).permit(:content, :images, :name).merge(beer_id: params[:beer_id])
  end
end
