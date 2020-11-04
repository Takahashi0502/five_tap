require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'コメントの新規投稿' do
    before do
      user = FactoryBot.create(:user)
      beer = FactoryBot.create(:beer)
      review = FactoryBot.build(:review)
      review.user_id = user.id
      review.beer_id = beer.id
      review.save
      @comment = user.comments.build(
        user_id: user.id,
        review_id: review.id
      )
    end

    it 'contentが入力されていれば登録ができること' do
      @comment.content = 'aaaaa'
      expect(@comment).to be_valid
    end

    it 'contentが空だと登録できないこと' do
      @comment.content = ''
      @comment.valid?
      expect(@comment.errors.full_messages).to include("Content can't be blank")
    end
  end
end
