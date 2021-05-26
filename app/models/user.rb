class User < ApplicationRecord
  belongs_to :role
  belongs_to :standard
  has_many :subjects, through: :standard
  has_many :parents, class_name: "User",foreign_key: "parent_id"
  belongs_to :parent, class_name: "User", optional: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable   
end
