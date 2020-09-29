class BeerController < ApplicationController
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
    @beer = Beer.find(params[:id])
  end

  private

  def beer_params
    params.require(:beer).permit(:name, :beer_image, :category_id, :style_id, :url, :brewery_name, :brewery_country_id)
  end
end
