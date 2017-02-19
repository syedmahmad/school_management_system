class AddTeachersReferenceToDtudentClass < ActiveRecord::Migration[5.0]
  def change
    add_reference :teachers, :student_class, index: true
  end
end