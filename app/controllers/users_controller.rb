class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @beers = @user.beers
  end
end
