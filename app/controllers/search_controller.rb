class SearchController < ApplicationController
before_action :set_ransack

  def index
    @beers = Beer.search(params[:search]).limit(100)
    @search = params[:search]
  end

  def detail_search
    @results = @b.result.includes(:reviews)
  end

  private

  def set_ransack
    @b = Beer.ransack(params[:q])
    @categories = Category.all
    @styles = Style.all
  end
end
