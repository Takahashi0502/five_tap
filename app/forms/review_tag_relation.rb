class ReviewTagRelation
  include ActiveModel::Model
  attr_accessor :content, :images, :name, :beer_id, :user_id

  def save
    review = Review.create(content: content, images: images, beer_id: beer_id, user_id: user_id)
    tag = Tag.where(name: name).first_or_initialize
    tag.save

    ReviewTag.create(review_id: review.id, tag_id: tag.id)
  end
end