class CreateTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :mobile
      t.string :address
      t.integer :salary

      t.timestamps
    end
  end
end
