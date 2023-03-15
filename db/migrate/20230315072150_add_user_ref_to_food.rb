class AddUserRefToFood < ActiveRecord::Migration[7.0]
  def change
    add_column :foods, :user_id, :integer
    add_index :foods, :user_id
    add_foreign_key :foods, :users, column: :user_id
  end
end
