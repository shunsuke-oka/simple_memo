require 'rails_helper'

RSpec.describe Memo, type: :model do
  before do
    @memo = FactoryBot.build(:memo)
  end

  describe 'memoの保存' do
    context 'memoが保存できる場合' do
      it 'titleがあればツイートは保存される' do
        expect(@memo).to be_valid
      end
    end

    context 'memoが保存できない場合' do
      it 'titleが空では保存できない' do
        @memo.title = ''
        @memo.valid?
        expect(@memo.errors.full_messages).to include("Title can't be blank")
      end
      it 'titleが21文字以上だと登録できない' do
        @memo.title = '000000000000000000000'
        @memo.valid?
        expect(@memo.errors.full_messages).to include("Title is too long (maximum is 20 characters)")
      end
      it 'textが空では保存できない' do
        @memo.text = ''
        @memo.valid?
        expect(@memo.errors.full_messages).to include("Text can't be blank")
      end
      it 'folder_idが紐付いていないとfolderは保存できない' do
        @memo.folder = nil
        @memo.valid?
        expect(@memo.errors.full_messages).to include("Folder must exist")
      end
    end
  end
end
