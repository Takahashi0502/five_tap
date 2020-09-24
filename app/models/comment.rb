class Comment < ApplicationRecord
  belongs_to :user
  has_many :goods
  has_many :users, through: :goods
  belongs_to :review
end
