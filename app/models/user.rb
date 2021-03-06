class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :favorites
  has_many :beers, through: :favorites
  has_one :profile, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :likes
  has_many :like_reviews, through: :likes
  has_many :comments, dependent: :destroy
  has_many :goods
  has_many :good_comments, through: :goods

  has_many :active_relationships, class_name: "Relationship", foreign_key: :following_id
  has_many :followings, through: :active_relationships, source: :follower
  has_many :passive_relationships, class_name: "Relationship", foreign_key: :follower_id
  has_many :followers, through: :passive_relationships, source: :following

  validates :nickname, presence: true, uniqueness: true
  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
  validates_format_of :password, with: PASSWORD_REGEX, message: 'には英字と数字の両方を含めて設定してください'

  # userのパスワードを変更させるための処理を記述。
  def update_without_current_password(params, *options)
    params.delete(:current_password)
 
    if params[:password].blank? && params[:password_confirmation].blank?
      params.delete(:password)
      params.delete(:password_confirmation)
    end
 
    result = update_attributes(params, *options)
    clean_up_passwords
    result
  end

  # ユーザーをフォロー済みか確認するメソッド
  def followed_by?(user)
    passive_relationships.find_by(following_id: user.id).present?
  end

  # フォローするときのメソッド
  def follow(user)
    active_relationships.create!(follower_id: user.id)
  end

  # フォローを外す時のメソッド
  def unfollow(user)
    follower = active_relationships.find_by(follower_id: user.id).destroy
  end
end
