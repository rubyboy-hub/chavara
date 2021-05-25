class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.bigint :from ,index: true
      t.bigint :to , index: true
      t.text :comment_text

      t.timestamps
    end
  end
end
