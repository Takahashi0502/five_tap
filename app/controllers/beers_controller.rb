class BeersController < ApplicationController
  before_action :move_to_signin, except: [:index, :show]
  before_action :set_beers, only: [:show, :edit, :update, :destroy]
  def index
    @beers = Beer.all
    @reviews = Review.order(id: "DESC").includes(:beer, :user).limit(5)
  end

  def new
    @beer = Beer.new
  end

  def create
    @beer = Beer.new(beer_params)
    if @beer.valid?
      @beer.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @reviews = Review.where(beer_id: @beer.id).includes(:tags)
  end

  def update
    if @beer.update(beer_params)
      redirect_to beer_path
    else
      render :edit
    end
  end

  def destroy
    @beer.destroy
    redirect_to root_path
  end

  private

  def beer_params
    params.require(:beer).permit(:name, :beer_image, :category_id, :style_id, :url, :brewery_name, :brewery_country_id, :text)
  end

  def set_beers
    @beer = Beer.find(params[:id])
  end

end
