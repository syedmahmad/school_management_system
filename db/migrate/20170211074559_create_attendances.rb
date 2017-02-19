class CreateAttendances < ActiveRecord::Migration[5.0]
  def change
    create_table :attendances do |t|
      t.boolean :present

      t.timestamps
    end
    add_reference :students, :attendances, index: true
  end
end
