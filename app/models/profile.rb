class Profile < ApplicationRecord
  belongs_to :user, optional: true
  has_one_attached :avatar

  validates :twitter_link, format: { with: /\A#{URI::regexp(%w(http https))}\z/, message: "URLを入力してください" }
end
