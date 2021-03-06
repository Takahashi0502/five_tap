module ProfilesHelper

  def show_avatar(user)
    if user.profile.avatar.attached?
      image_tag user.profile.avatar.variant(resize:'40x40'), {class: "user-icon"}
    else
      image_tag asset_path('default_user.jpg'), {class: "user-icon", size: "40x40"}
    end
  end
end
