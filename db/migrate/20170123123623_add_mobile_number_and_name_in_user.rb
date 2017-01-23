class AddMobileNumberAndNameInUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :mobile_number, :string
    add_column :users, :name, :string
  end
end
