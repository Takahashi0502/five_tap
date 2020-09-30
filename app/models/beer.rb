class Beer < ApplicationRecord
  has_many :reviews
  has_many :favorites
  has_many :users, through: :favorites
  has_one_attached :beer_image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :style
  belongs_to_active_hash :brewery_country

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
