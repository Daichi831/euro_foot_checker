class ChangeColumnsAddNotnullOnUsers < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :name, :string, default: "", null: false
    add_index :users, :name, unique: true
  end
end
