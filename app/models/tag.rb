class Tag < ApplicationRecord
  has_many :review_tags, dependent: :destroy
  has_many :reviews, through: :review_tags

  validates :name, uniqueness: true
end
