class BeerController < ApplicationController
  before_action :set_beers, only: [:show, :edit, :update]
  def index
    @beers = Beer.all
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
  end

  def update
    if @beer.update(beer_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def beer_params
    params.require(:beer).permit(:name, :beer_image, :category_id, :style_id, :url, :brewery_name, :brewery_country_id)
  end

  def set_beers
    @beer = Beer.find(params[:id])
  end
end
