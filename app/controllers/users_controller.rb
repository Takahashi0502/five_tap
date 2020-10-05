class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @beers = @user.beers
  end

  def following
    @user = User.find(params[:id])
    @users = @user.followings
  end

  def follower
    @user = User.find(params[:id])
    @users = @user.followers
  end
end
