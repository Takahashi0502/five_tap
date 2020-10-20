class ReviewsController < ApplicationController
  before_action :move_to_signin, only: [:new, :create]
  before_action :set_beer, only: [:new, :create]

  def new
    @review = ReviewTagRelation.new
  end

  def create
    @review = ReviewTagRelation.new(review_params)
    @review.user_id = current_user.id
    if @review.valid?
      @review.save
      return redirect_to beer_path(@beer.id)
    else
      @reviews = Review.where(beer_id: @beer.id)
      render 'reviews/new'
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

  def set_beer
    @beer = Beer.find(params[:beer_id])
  end
end
