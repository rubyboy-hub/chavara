class User < ApplicationRecord
  belongs_to :role
  # belongs_to :relationship
  belongs_to :standard
  has_many :subjects, through: :standard
  has_many :parents, class_name: "User",foreign_key: "parent_id"
  belongs_to :parent, class_name: "User", optional: true
  has_one_attached :avatar
  has_many :comments

  has_many :relationships, class_name: "Relationship",foreign_key: "relationship_id"
  belongs_to :relationship, class_name: "Relationship", optional: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable   

  has_one_attached :avatar
  def avatar_thumbnail
    if avatar.attached?
      avatar.variant(resize:"150X150").processed
    else
        '/default_profile.jpg'
    end
  end
end
