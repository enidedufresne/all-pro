class CreateStartingPitcherStats < ActiveRecord::Migration
  def change
    create_table :starting_pitcher_stats do |t|
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
      t.boolean :pitcher_win
      t.boolean :pitcher_loss
      t.integer :pitcher_wins
      t.integer :pitcher_losses
      t.boolean :pitcher_no_decision
      t.integer :pitcher_no_decisions
      t.integer :pitcher_saves
      t.integer :innings_pitched
      t.integer :hits_allowed
      t.integer :runs_allowed
      t.integer :strikeouts
      t.integer :walks_allowed
      t.references :user, index: true, foreign_key: true
      t.references :stat, index: true, foreign_key: true
      t.references :sport, index: true, foreign_key: true
      t.references :position, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
