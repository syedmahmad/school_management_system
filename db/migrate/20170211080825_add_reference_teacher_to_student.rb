class AddReferenceTeacherToStudent < ActiveRecord::Migration[5.0]
  def change
    add_reference :students, :teacher, index: true
  end
end
