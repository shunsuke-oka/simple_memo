class Folder < ApplicationRecord
  validates :title, presence: true, length: { maximum: 20 }
  
  belongs_to :user
  has_many :memos, dependent: :destroy
end
