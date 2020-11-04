require 'rails_helper'

RSpec.describe Beer, type: :model do
  describe 'ビール情報の新規登録' do
    before do
      @beer = FactoryBot.build(:beer)
    end

    it 'nameがあれば登録できること' do
      expect(@beer).to be_valid
    end

    it 'nameが空だと登録できないこと' do
      @beer.name = nil
      @beer.valid?
      expect(@beer.errors.full_messages).to include("Name can't be blank")
    end

    it 'urlがURL形式で入力されていれば登録できること' do
      @beer.url = Faker::Internet.url
      expect(@beer).to be_valid
    end

    it 'urlがURL形式でなければ登録できないこと' do
      @beer.url = 'aaa000'
      @beer.valid?
      expect(@beer.errors.full_messages).to include("Url はURL形式で入力してください")
    end
  end
end
