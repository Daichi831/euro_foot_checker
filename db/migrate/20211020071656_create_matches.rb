class CreateMatches < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
      t.datetime :date
      t.string :stadium
      t.integer :home_team_score
      t.integer :away_team_score

      t.integer :home_team_id, null: false
      t.integer :away_team_id, null: false

      t.timestamps
    end
    add_foreign_key :matches, :teams, column: :home_team_id
    add_foreign_key :matches, :teams, column: :away_team_id
  end
end
