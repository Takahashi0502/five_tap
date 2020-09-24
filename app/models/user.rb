class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :favorites
  has_many :beers, through: :favorites
  has_one :profile
  has_many :reviews
  has_many :likes
  has_many :like_reviews, through: :likes
  has_many :comments
  has_many :goods
  has_many :good_comments, through: :goods
  
  has_many :active_relationships, class_name: "Relationship"
  has_many :followings, through: :active_relationships, source: :follower
  has_many :passive_relationships, class_name: "Relationship"
  has_many :followers, through: :passive_relationships, source: :following

  validates :nickname, presence: true
end
