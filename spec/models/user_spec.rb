require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'ユーザーの新規登録' do
    before do
      @user = FactoryBot.build(:user)
    end
    it 'nickname,enail,password,password_confirmationがあれば登録できること' do
      expect(@user).to be_valid
    end

    it 'nicknameが空だと登録できないこと' do
      @user.nickname = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Nickname can't be blank")
    end

    it '重複したnicknameが存在する場合登録できないこと' do
      @user.save
      other = FactoryBot.build(:user)
      other.nickname = @user.nickname
      other.valid?
      expect(other.errors.full_messages).to include("Nickname has already been taken") 
    end

    it 'emailが空だと登録できないこと' do
      @user.email = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end

    it '重複したemailが存在する場合登録できないこと' do
      @user.save
      other = FactoryBot.build(:user)
      other.email = @user.email
      other.valid?
      expect(other.errors.full_messages).to include("Email has already been taken")
    end

    it 'passwordが空だと登録できないこと' do
      @user.password = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Password can't be blank")
    end

    it 'passwordが存在してもpassword_confirmationが空だと登録できないこと' do
      @user.password_confirmation = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end

    it 'passwordが6文字以上であれば登録できること' do
      @user.password = 'aaa000'
      @user.password_confirmation = 'aaa000'
      expect(@user).to be_valid
    end

    it 'passwordが5文字以下であれば登録できないこと' do
      @user.password = 'bbb11'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
    end

    it 'passwordが半角英数混合でないと登録できないこと' do
      @user.password = 'aaabbb'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password には英字と数字の両方を含めて設定してください")
    end
  end
end
