class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :name, length: { in: 2..20 },uniqueness: true
  validates :introduction, length: { maximum: 50 }
  # validates :email, uniqueness: true


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable,:validatable

         has_many :books, dependent: :destroy
         attachment :profile_image
end
