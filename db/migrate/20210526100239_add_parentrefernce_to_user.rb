class AddParentrefernceToUser < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :users, :users, column: :parent_id
  end
end
