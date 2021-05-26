class ChangeDataTypeForFieldname < ActiveRecord::Migration[6.1]
  def change
    change_column(:subjects, :name, :string)
    change_column(:standards, :name, :string)
  end
end
