class AddParentToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :parent_id, :bigint,index:true
  end
end
