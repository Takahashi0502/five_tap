require 'rails_helper'

RSpec.describe Profile, type: :model do
  describe 'プロフィールの新規登録' do
    before do
      @profile = FactoryBot.build(:profile)
    end

    it 'twitter_linkがURL形式なら保存できること' do
      expect(@profile).to be_valid
    end

    it 'twitter_linkがURL形式でなければ保存できないこと' do
      @profile.twitter_link = 'aaa000'
      @profile.valid?
      expect(@profile.errors.full_messages).to include("Twitter link はURL形式で入力してください")
    end


  end
end
