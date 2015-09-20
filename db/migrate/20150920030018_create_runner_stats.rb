class CreateRunnerStats < ActiveRecord::Migration
  def change
    create_table :runner_stats do |t|
      t.string :position_name
      t.string :shorthand
      t.integer :sport_id
      t.integer :position_id
      t.string :sport_name
      t.string :event
      t.integer :races_run
      t.boolean :win
      t.boolean :loss
      t.integer :wins
      t.integer :losses
      t.integer :team_score
      t.integer :distance_time
      t.integer :placed
      t.integer :speed
      t.references :user, index: true, foreign_key: true
      t.references :stat, index: true, foreign_key: true
      t.references :sport, index: true, foreign_key: true
      t.references :position, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
