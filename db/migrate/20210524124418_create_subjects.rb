class CreateSubjects < ActiveRecord::Migration[6.1]
  def change
    create_table :subjects do |t|
      t.text :name
      t.references :standard, null: false, foreign_key: true

      t.timestamps
    end
  end
end
