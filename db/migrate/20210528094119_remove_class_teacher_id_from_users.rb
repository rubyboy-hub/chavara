class RemoveClassTeacherIdFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_reference :users, :class_teacher, foreign_key: { to_table: :standards }
  end
end
