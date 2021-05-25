class User < ApplicationRecord
  belongs_to :role
  belongs_to :standard
  has_many :subjects, through: :standard

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable   
end
