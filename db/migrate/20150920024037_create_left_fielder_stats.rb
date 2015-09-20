class CreateLeftFielderStats < ActiveRecord::Migration
  def change
    create_table :left_fielder_stats do |t|
      t.string :position_name
      t.string :shorthand
      t.integer :sport_id
      t.integer :position_id
      t.string :sport_name
      t.string :event
      t.integer :games_started
      t.integer :games_played
      t.boolean :win
      t.boolean :loss
      t.integer :wins
      t.integer :losses
      t.integer :plate_appearances
      t.integer :at_bats
      t.integer :hits
      t.integer :runs_scored
      t.integer :runs_batted_in
      t.integer :walks
      t.integer :strike_outs
      t.integer :stolen_bases
      t.integer :doubles
      t.integer :triples
      t.integer :home_runs
      t.references :user, index: true, foreign_key: true
      t.references :stat, index: true, foreign_key: true
      t.references :sport, index: true, foreign_key: true
      t.references :position, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
