class ChangeDataTypeForFieldnameInRelationship < ActiveRecord::Migration[6.1]
  def change
    change_column(:relationships, :name, :string)
  end
end
