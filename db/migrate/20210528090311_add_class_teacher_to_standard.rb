class AddClassTeacherToStandard < ActiveRecord::Migration[6.1]
  def change
    add_column :standards, :class_teacher_id, :integer, index: true
    add_foreign_key :standards, :users, column: :class_teacher_id
  end
end
