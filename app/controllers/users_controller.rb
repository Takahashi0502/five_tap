class UsersController < ApplicationController
  before_action :move_to_signin

  def show
    @user = User.find(params[:id])
    @beers = @user.beers
    @reviews = @user.reviews
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
