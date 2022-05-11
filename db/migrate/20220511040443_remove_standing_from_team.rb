class RemoveStandingFromTeam < ActiveRecord::Migration[6.1]
  def change
    remove_column :teams, :standing, :integer
  end
end
