class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :books, dependent: :destroy
  attachment :profile_image

  validates :name, presence: true
  validates :name, length: {minimum: 2, message: 'is too short (minimum is 2 characters)'}
  validates :name, length: {maximum: 20}
  validates :name, uniqueness: true
  validates :introduction, length: { maximum: 50}

end
