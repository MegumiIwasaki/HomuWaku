class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true
  validates :name, presence: true
  validates :school, presence: true
  validates :grade, presence: true


  has_many :submissions
  has_one :keyword
end
