class Review < ApplicationRecord
  belongs_to :beer
  belongs_to :user
  has_many :review_tags
  has_many :tags, through: :review_tags
  has_many :likes
  has_many :users, through: :likes
  has_many_attached :images
end
