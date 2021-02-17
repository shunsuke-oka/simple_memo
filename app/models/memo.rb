class Memo < ApplicationRecord
  validates :title, presence: true, length: { maximum: 20 }
  validates :text, presence: true

  belongs_to :folder
end
