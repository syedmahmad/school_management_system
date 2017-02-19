class AddJoiningDAteCoulumnToTeacher < ActiveRecord::Migration[5.0]
  def change
    add_column :teachers, :joining_date, :string
  end
end
