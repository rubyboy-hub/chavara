class AddRelationshipToUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :relationship, null: true, foreign_key: true
  end
end
