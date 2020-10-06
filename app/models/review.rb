class Review < ApplicationRecord
  belongs_to :beer
  belongs_to :user
  has_many :review_tags, dependent: :destroy
  has_many :tags, through: :review_tags
  has_many :likes
  has_many :users, through: :likes
  has_many_attached :images

  validates :content, presence: true

  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end
end
