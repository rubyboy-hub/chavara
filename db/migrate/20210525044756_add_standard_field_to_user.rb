class AddStandardFieldToUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :standard, null: true, foreign_key: true, index: true
  end
end
