require 'rails_helper'

RSpec.describe ReviewTagRelation, type: :model do
  describe 'ビア活の新規登録' do
    before do
      @review = FactoryBot.build(:review_tag_relation)
    end
    it 'contentが入力されていれば登録できること' do
      @review.content = 'aaaaaa'
      expect(@review).to be_valid
    end

    it 'contentが空だと登録できないこと'do
      @review.content = ''
      @review.valid?
      expect(@review.errors.full_messages).to include("Content can't be blank")
    end
  end
end
