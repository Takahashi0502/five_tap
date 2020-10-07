class SearchController < ApplicationController

  def index
    @beers = Beer.search(params[:search]).limit(100)
    @search = params[:search]
  end
end
