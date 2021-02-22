require 'rails_helper'

RSpec.describe Diary, type: :model do
  before do
    @diary = FactoryBot.build(:diary)
  end

  describe '登録の保存' do
    context '記録が投稿できる場合' do
      it '画像とテキストがあれば投稿できる' do
      end
      it 'テキストがあれば投稿できる' do
      end
    end
    context '記録が投稿できない場合' do
      it '日付が空では投稿できない' do
      end     
      it 'ユーザーが紐付いていなければ投稿できない' do

      end
    end
  end
end
