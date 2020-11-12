class Memo < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true

  belongs_to :folder
end
