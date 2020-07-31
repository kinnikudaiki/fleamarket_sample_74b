class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :sending_destinations
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nickname,presence: true, length: {maximum: 8}
  validates :last_name,presence: true
  validates :first_name,presence: true
  validates :last_name_kana,presence: true
  validates :first_name_kana,presence: true
  validates :birth_day, presence: true
end
