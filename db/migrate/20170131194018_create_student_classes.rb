class CreateStudentClasses < ActiveRecord::Migration[5.0]
  def change
    create_table :student_classes do |t|
      t.string :name
      t.integer :fee

      t.timestamps
    end
    add_reference :students, :student_class, index: true
  end
end
