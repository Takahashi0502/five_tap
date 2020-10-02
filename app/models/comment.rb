class Comment < ApplicationRecord
  belongs_to :user
  has_many :goods
  has_many :users, through: :goods
  belongs_to :review

  def gooding_by?(user)
    goods.where(user_id: user.id).exists?
  end
end
