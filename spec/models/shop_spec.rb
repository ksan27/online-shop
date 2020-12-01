require 'rails_helper'
RSpec.describe Shop, type: :model do
  before do
    @shop = FactoryBot.build(:shop)
  end

  describe 'URL投稿' do
    context 'URL登録がうまくいくとき' do
      it '必須項目が全て存在していれば保存できる' do
        expect(@shop).to be_valid
      end
      it 'URLはhttp(s)と「.」と英数字が入っていれば保存できる' do
        @shop.shop_url = 'https://trello.com'
        expect(@shop).to be_valid
      end
    end

    context 'URL登録がうまくいかないとき' do
      it '画像が選択されていないと保存できない' do
        @shop.image = nil
        @shop.valid?
        expect(@shop.errors.full_messages).to include('イメージを入力してください')
      end
      it 'ブランドネームが空の場合は保存できない' do
        @shop.name = ''
        @shop.valid?
        expect(@shop.errors.full_messages).to include('ブランドネームを入力してください')
      end
      it 'ブランドネームが半角カナの場合保存できない' do
        @shop.name = 'ｶﾅ'
        @shop.valid?
        expect(@shop.errors.full_messages).to include('ブランドネームは登録出来ない値です')
      end
      it 'ショップURLが空の場合は保存できない' do
        @shop.shop_url = ''
        @shop.valid?
        expect(@shop.errors.full_messages).to include('ショップURLを入力してください')
      end
      it 'ショップURLが全角英字だと保存できない' do
        @shop.shop_url = 'https://ｂｃｄ.ｃｏｍ'
        @shop.valid?
        expect(@shop.errors.full_messages).to include('ショップURLは登録出来ない値です')
      end
      it 'ショップURLが全角数字だと保存できない' do
        @shop.shop_url = 'https://０１２.３４５'
        @shop.valid?
        expect(@shop.errors.full_messages).to include('ショップURLは登録出来ない値です')
      end
      it 'ショップURLが日本語だと保存できない' do
        @shop.shop_url = 'https://テスト.テスト'
        @shop.valid?
        expect(@shop.errors.full_messages).to include('ショップURLは登録出来ない値です')
      end
      it 'ショップURLがhttp(s)から始まっていないと保存できない' do
        @shop.shop_url = 'htps://test.com'
        @shop.valid?
        expect(@shop.errors.full_messages).to include('ショップURLは登録出来ない値です')
      end
      it 'ショップURLがhttp(s)から始まっていても「.」がないと保存できない' do
        @shop.shop_url = 'https://testcom'
        @shop.valid?
        expect(@shop.errors.full_messages).to include('ショップURLは登録出来ない値です')
      end
      it 'ショップURLがhttp(s)から始まっていても「英数字」が1文字でもないと保存できない' do
        @shop.shop_url = 'https://'
        @shop.valid?
        expect(@shop.errors.full_messages).to include('ショップURLは登録出来ない値です')
      end
    end
  end
end
