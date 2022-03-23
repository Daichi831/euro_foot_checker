class RemoveNameFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :name, :string, default: '', null: false, unique: true
  end
end
