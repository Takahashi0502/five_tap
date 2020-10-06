class ProfilesController < ApplicationController

  def edit
    @profile = Profile.find_by(user_id: params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    if @profile.update(profile_edit_params)
      redirect_to user_path(@profile.user_id)
    else
      render :edit
    end
  end

  private

  def profile_edit_params
    params.require(:profile).permit(:avatar, :favorite_beer, :twitter_link, :info).merge(user_id: current_user.id)
  end
end
