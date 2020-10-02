class ReviewTagRelation
  include ActiveModel::Model
  attr_accessor :content, :images, :name, :beer_id, :user_id

  def save
    review = Review.create(content: content, images: images, beer_id: beer_id, user_id: user_id)
    # split(/[[:blank:]]+/)でスペース区切りで配列にする
    tag_list = name.split(/[[:blank:]]+/).select(&:present?)
    # 複数のタグが入力された時に、タグ毎に保存させる
    tag_list.each do |t|
      tag = Tag.where(name: t).first_or_initialize
      tag.save
      ReviewTag.create(review_id: review.id, tag_id: tag.id)
    end
  end
end