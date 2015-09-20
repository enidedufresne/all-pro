class CreatePowerForwardStats < ActiveRecord::Migration
  def change
    create_table :power_forward_stats do |t|
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
      t.integer :minutes_played
      t.integer :fieldgoals_made
      t.integer :fieldgoal_attemps
      t.integer :threepoints_made
      t.integer :threepoint_attemps
      t.integer :freethrows_made
      t.integer :freethrow_attemps
      t.integer :rebounds
      t.integer :assists
      t.integer :steals
      t.integer :blocks
      t.integer :points
      t.references :user, index: true, foreign_key: true
      t.references :stat, index: true, foreign_key: true
      t.references :sport, index: true, foreign_key: true
      t.references :position, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
