class ChangeColumnDateToString < ActiveRecord::Migration[5.0]
  def change
    change_column :students, :joining_date, :string
  end
end
