class Folder < ApplicationRecord
  validates :title, presence: true
  
  belongs_to :user
  has_many :memos, dependent: :destroy
end
