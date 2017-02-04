class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :gradient
      t.string :sex
      t.string :city
      t.string :address
      t.integer :age
      t.string :mobile
      t.date   :joining_date
      t.timestamps
    end
  end
end
