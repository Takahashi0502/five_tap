class BeerController < ApplicationController
  def index
  end

  def new
    @beer = Beer.new
  end
end
