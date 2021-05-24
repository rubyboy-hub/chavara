class User < ApplicationRecord
  belongs_to :role

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable   
end
