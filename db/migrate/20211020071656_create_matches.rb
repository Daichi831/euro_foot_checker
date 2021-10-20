class CreateMatches < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
      t.datetime :date
      t.string :stadium
      t.integer :home_team_score
      t.integer :away_team_score

      t.timestamps
    end
  end
end
