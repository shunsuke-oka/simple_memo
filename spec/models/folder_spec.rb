require 'rails_helper'

RSpec.describe Folder, type: :model do
  before do
    @folder = FactoryBot.build(:folder)
  end

  describe 'folderの保存' do
    context 'folderが保存できる場合' do
      it 'titleがあればツイートは保存される' do
        expect(@folder).to be_valid
      end
    end

    context 'folderが保存できない場合' do
      it 'titleが空では保存できない' do
        @folder.title = ''
        @folder.valid?
        expect(@folder.errors.full_messages).to include("Title can't be blank")
      end
      it 'titleが21文字以上だと登録できない' do
        @folder.title = '000000000000000000000'
        @folder.valid?
        expect(@folder.errors.full_messages).to include("Title is too long (maximum is 20 characters)")
      end
      it 'ユーザーが紐付いていないとfolderは保存できない' do
        @folder.user = nil
        @folder.valid?
        expect(@folder.errors.full_messages).to include('User must exist')
      end
    end
  end
end
