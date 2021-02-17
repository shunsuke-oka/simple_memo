class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :folders
  with_options presence: true do
    VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z{6,}/i.freeze
    validates :password, format: { with: VALID_PASSWORD_REGEX }
    validates :nickname, length: { maximum: 6 }
    validates :email, uniqueness: { case_sensitive: false }
  end
end
